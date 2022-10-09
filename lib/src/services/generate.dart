import 'dart:async';
import 'dart:ui' as ui;
import 'package:async/async.dart';
import 'package:image/image.dart' as di;
import 'package:fixnum/fixnum.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:grpc/grpc_web.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/engine.dart';

import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/models/server.dart';

import 'package:idea2art/src/generated/dashboard.pbgrpc.dart';
import 'package:idea2art/src/generated/engines.pbgrpc.dart' as eg;
import 'package:idea2art/src/generated/generation.pbgrpc.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

class GenerateServiceHostPortBadException implements Exception {
  String? message;
  GenerateServiceHostPortBadException([this.message]);
}

class GenerateServiceAuthorizationException implements Exception {
  String? message;
  GenerateServiceAuthorizationException([this.message]);
}

class CompleteNotifier extends StateNotifier<bool> {
  CompleteNotifier() : super(false);

  void setComplete() {
    state = true;
  }

  bool isComplete() {
    return state;
  }
}

class GenerateResult {
  final StreamController<ImageProvider> _images;
  final StreamController<ui.Image> _uiImages;
  final StreamController<double> _progress;

  final CancelDelegateStream<Answer> _sourceStream;
  late Stream<double> _progressBroadcast;

  final CompleteNotifier _complete;

  GenerateResult(this._sourceStream)
      : _images = StreamController<ImageProvider>(),
        _uiImages = StreamController<ui.Image>(),
        _progress = StreamController<double>(),
        _complete = CompleteNotifier() {
    _progressBroadcast = _progress.stream.asBroadcastStream();
    _startListening();
  }

  void _startListening() async {
    try {
      await for (Answer answer in _sourceStream) {
        for (final artifact in answer.artifacts) {
          if (artifact.type == ArtifactType.ARTIFACT_IMAGE) {
            final image = Uint8List.fromList(artifact.binary);
            _images.add(MemoryImage(image));
            _uiImages.add(await decodeImageFromList(image));
          }
        }
      }
    } on GrpcError {
      // pass
    } finally {
      _complete.setComplete();
      _images.close();
      _uiImages.close();
      _progress.close();
    }
  }

  void cancel() {
    _sourceStream.cancel();
  }

  CompleteNotifier get complete {
    return _complete;
  }

  Stream<ImageProvider> get images {
    return _images.stream;
  }

  Stream<ui.Image> get uiimages {
    return _uiImages.stream;
  }

  Stream<double> get progress {
    return _progressBroadcast;
  }
}

class BusyNotifier extends StateNotifier<bool> {
  BusyNotifier() : super(false);

  void setBusy(bool busy) {
    state = busy;
  }

  bool isBusy() {
    return state;
  }
}

class CancelDelegateStream<R> extends DelegatingStream<R> {
  final ResponseStream<R> cancelDelegate;

  CancelDelegateStream(stream, this.cancelDelegate) : super(stream);

  Future<void> cancel() => cancelDelegate.cancel();
}

class GenerateService {
  GenerateService(GenerateServer this.server)
      : busy = BusyNotifier(),
        channel = GrpcWebClientChannel.xhr(
          Uri(
            scheme: server.port == 443 ? 'https' : 'http',
            host: server.host,
            port: server.port,
            path: "/",
          ),
        );

  final GenerateServer server;
  final GrpcWebClientChannel channel;

  final BusyNotifier busy;

  Future<bool> test() async {
    try {
      final stub = eg.EnginesServiceClient(channel);
      final res = await stub.listEngines(
        eg.ListEnginesRequest(),
        options:
            CallOptions(metadata: {"authorization": "Bearer ${server.key}"}),
      );
    } on GrpcError catch (err) {
      if (err.code == 14) {
        throw GenerateServiceAuthorizationException(err.message);
      } else {
        debugPrint("$err ${err.message}");
        throw GenerateServiceHostPortBadException(err.message);
      }
    }

    return true;
  }

  Future<Engines> engines() async {
    final stub = eg.EnginesServiceClient(channel);
    var res = await stub.listEngines(
      eg.ListEnginesRequest(),
      options: CallOptions(metadata: {"authorization": "Bearer ${server.key}"}),
    );

    return Engines(
      engines: res.engine.map<Engine>(
        (info) => Engine(
          id: info.id,
          owner: info.owner,
          name: info.name,
          description: info.description,
        ),
      ),
    );
  }

  CancelDelegateStream<T> trackBusy<T>(ResponseStream<T> Function() callback) {
    if (busy.isBusy()) {
      throw Exception("Tried to make a request, but Generator is already busy");
    }

    busy.setBusy(true);
    final result = callback();
    final controller = StreamController<T>();

    result.listen(
      (value) => controller.add(value),
      onError: (error) => controller.addError(error),
      onDone: () {
        busy.setBusy(false);
        controller.close();
      },
    );

    return CancelDelegateStream(controller.stream, result);
  }

  GenerateResult generate(
    GeneratePrompt prompt,
    GenerateSettings settings,
  ) {
    final stub = GenerationServiceClient(channel);

    final promptList = <Prompt>[];

    promptList.add(Prompt(text: prompt.prompt));

    final crop = prompt.crop;

    /*
    final maskLevelAdjustment = {
      MaskShift.noShift: <ImageAdjustment>[],
      MaskShift.towardsExposed: <ImageAdjustment>[
        ImageAdjustment(
          levels: ImageAdjustment_Levels(
            inputLow: 0.5,
            inputHigh: 1,
            outputLow: 0,
            outputHigh: 1,
          ),
        ),
      ],
      MaskShift.towardsProtected: <ImageAdjustment>[
        ImageAdjustment(
          levels: ImageAdjustment_Levels(
            inputLow: 0,
            inputHigh: 0.5,
            outputLow: 0,
            outputHigh: 1,
          ),
        ),
      ],
    }[prompt.maskShift];
  */

    final imagePng = prompt.imagePng;
    if (imagePng != null) {
      final imagePrompt = Prompt(
        artifact: Artifact(
          binary: imagePng,
          type: ArtifactType.ARTIFACT_IMAGE,
        ),
      );

      if (crop != null) {
        imagePrompt.artifact.adjustments.add(
          ImageAdjustment(
            crop: ImageAdjustment_Crop(
              top: $fixnum.Int64(crop.top.toInt()),
              left: $fixnum.Int64(crop.left.toInt()),
              height: $fixnum.Int64(crop.height.toInt()),
              width: $fixnum.Int64(crop.width.toInt()),
            ),
          ),
        );
      }

      promptList.add(imagePrompt);
    }

    final maskPng = prompt.maskPng;
    if (maskPng != null) {
      final maskPrompt = Prompt(
        artifact: Artifact(
          binary: maskPng,
          type: ArtifactType.ARTIFACT_MASK,
          adjustments: [
            ImageAdjustment(
              channels: ImageAdjustment_Channels(
                  r: ChannelSource.CHANNEL_A, a: ChannelSource.CHANNEL_ONE),
            ),
            ImageAdjustment(
              blur: ImageAdjustment_Gaussian(
                sigma: 32,
                direction: prompt.maskShift == MaskShift.noShift
                    ? GaussianDirection.DIRECTION_NONE
                    : prompt.maskShift == MaskShift.towardsProtected
                        ? GaussianDirection.DIRECTION_UP
                        : GaussianDirection.DIRECTION_DOWN,
              ),
            ),
            //...maskLevelAdjustment!
          ],
        ),
      );

      if (crop != null) {
        maskPrompt.artifact.adjustments.add(
          ImageAdjustment(
            crop: ImageAdjustment_Crop(
              top: $fixnum.Int64(crop.top.toInt()),
              left: $fixnum.Int64(crop.left.toInt()),
              height: $fixnum.Int64(crop.height.toInt()),
              width: $fixnum.Int64(crop.width.toInt()),
            ),
          ),
        );
      }

      promptList.add(maskPrompt);
    }

    final request = Request(
      prompt: promptList,
      engineId: settings.engineID,
      image: ImageParameters(
        height: Int64(settings.height),
        width: Int64(settings.width),
        samples: Int64(settings.numberOfImages),
        steps: Int64(settings.steps),
        seed: settings.seed >= 0 ? [settings.seed] : [],
        transform: TransformType(
          // TODO: Don't hardcode
          diffusion: DiffusionSampler.SAMPLER_DDIM,
        ),
        parameters: [
          StepParameter(
            sampler: SamplerParameters(
              cfgScale: settings.cfgScale,
              eta: 0.8, // TODO: Don't hardcode ETA
            ),
            schedule: ScheduleParameters(start: settings.strength),
          ),
        ],
      ),
    );

    final responseStream = trackBusy<Answer>(() => stub.generate(
          request,
          options:
              CallOptions(metadata: {"authorization": "Bearer ${server.key}"}),
        ));

    return GenerateResult(responseStream);
  }
}
