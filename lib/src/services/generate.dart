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

class GenerateServiceHostPortBadException implements Exception {
  String? message;
  GenerateServiceHostPortBadException([this.message]);
}

class GenerateServiceAuthorizationException implements Exception {
  String? message;
  GenerateServiceAuthorizationException([this.message]);
}

class GenerateService {
  GenerateService(GenerateServer this.server)
      : channel = GrpcWebClientChannel.xhr(Uri(
            scheme: server.port == 443 ? 'https' : 'http',
            host: server.host,
            port: server.port,
            path: "/"));

  final GenerateServer server;
  final GrpcWebClientChannel channel;

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

  Stream<ImageProvider> generate(
    GeneratePrompt prompt,
    GenerateSettings settings,
  ) async* {
    final stub = GenerationServiceClient(channel);

    final request = Request(
      prompt: [Prompt(text: prompt.prompt)],
      engineId: settings.engineID,
      image: ImageParameters(
        height: Int64(settings.height),
        width: Int64(settings.width),
        samples: Int64(settings.numberOfImages),
        steps: Int64(settings.steps),
        seed: [settings.seed],
        transform: TransformType(
          // TODO: Don't hardcode
          diffusion: DiffusionSampler.SAMPLER_DDIM,
        ),
        parameters: [
          StepParameter(
            sampler: SamplerParameters(cfgScale: settings.cfgScale),
          ),
        ],
      ),
    );

    await for (Answer answer in stub.generate(
      request,
      options: CallOptions(metadata: {"authorization": "Bearer ${server.key}"}),
    )) {
      for (final artifact in answer.artifacts) {
        if (artifact.type == ArtifactType.ARTIFACT_IMAGE) {
          yield MemoryImage(Uint8List.fromList(artifact.binary));
        }
      }
    }
  }
}
