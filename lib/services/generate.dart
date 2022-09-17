import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:grpc/grpc_web.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/models/generate.dart';
import 'package:idea2art/models/server.dart';
import 'package:idea2art/src/generated/dashboard.pbgrpc.dart';
import 'package:idea2art/src/generated/engines.pbgrpc.dart';
import 'package:idea2art/src/generated/generation.pbgrpc.dart';

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
    debugPrint('Testing: ${channel}.');

    try {
      final stub = EnginesServiceClient(channel);
      final res = await stub.listEngines(
        ListEnginesRequest(),
        options:
            CallOptions(metadata: {"authorization": "Bearer ${server.key}"}),
      );

      debugPrint('Testing: ${channel} GOOD ${res}');
    } catch (err) {
      debugPrint('Testing: ${channel} $err');
      return false;
    }

    return true;
  }

  Stream<ImageProvider> generate(
    GeneratePrompt prompt,
    GenerateSettings settings,
  ) async* {
    final stub = GenerationServiceClient(channel);

    final request = Request(
      prompt: [Prompt(text: prompt.prompt)],
      engineId: "stable-diffusion-v1-5", // TODO: Don't hardcode this
      image: ImageParameters(
        height: Int64(settings.height),
        width: Int64(settings.width),
        samples: Int64(settings.numberOfImages),
        steps: Int64(settings.steps),
        seed: [settings.seed],
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
