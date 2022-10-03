import 'dart:async';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:idea2art/src/models/canvas.dart';
import 'package:idea2art/src/models/server.dart';
import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/models/engine.dart';
import 'package:idea2art/src/models/results.dart';

import 'package:idea2art/src/notifiers/canvas.dart';
import 'package:idea2art/src/notifiers/server.dart';
import 'package:idea2art/src/notifiers/generate.dart';
import 'package:idea2art/src/notifiers/result.dart';

import 'package:idea2art/src/services/generate.dart';

final sharedPreferencesInstance =
    FutureProvider<SharedPreferences>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return await SharedPreferences.getInstance();
});

final localServerProvider = FutureProvider<String>((ref) async {
  if (Uri.base.scheme == "http" || Uri.base.scheme == "https") {
    final response = await http.get(Uri.parse("/server.json"));
    final contentType = response.headers['content-type'] ?? "";

    if (response.statusCode == 200 &&
        contentType.startsWith('application/json')) {
      return response.body;
    }
  }

  return "";
});

final generateServerProvider = StateNotifierProvider<
    GenerateServerPendingNotifier, AsyncValue<GenerateServer>>(
  (ref) {
    final prefs = ref.watch(sharedPreferencesInstance);
    final local = ref.watch(localServerProvider);

    final value = prefs.value;
    final localValue = local.value;

    return (value == null || localValue == null)
        ? GenerateServerPendingNotifier()
        : GenerateServerNotifier(value, localValue);
  },
);

final generateServiceProvider = FutureProvider<GenerateService>((ref) async {
  final server = ref.watch(generateServerProvider);

  final serverValue = server.value;
  if (serverValue != null) {
    final service = GenerateService(serverValue);
    await service.test();
    return service;
  }

  return Completer<Never>().future;
});

final enginesProvider = FutureProvider<Engines>((ref) async {
  final service = await ref.watch(generateServiceProvider.future);
  return service.engines();
});

final resultImagesProvider =
    StateNotifierProvider<ResultImagesNotifier, ResultImages>(
  (ref) => ResultImagesNotifier(),
);

final generatePromptProvider =
    StateNotifierProvider<GeneratePromptNotifier, GeneratePrompt>(
  (ref) => GeneratePromptNotifier(),
);

final generateSettingsProvider =
    StateNotifierProvider<GenerateSettingsNotifier, GenerateSettings>((ref) {
  return GenerateSettingsNotifier(ref);
});

final generateSettingsEngineProvider = Provider<Engine?>((ref) {
  final engines = ref.watch(enginesProvider).value;

  final engineID = ref.watch(
    generateSettingsProvider.select((settings) => settings.engineID),
  );

  if (engines != null) {
    return engines.engines.firstWhere(
      (element) => element.id == engineID,
      orElse: () => engines.engines.first,
    );
  }

  return null;
});

final imageCanvasProvider =
    StateNotifierProvider<ImageCanvasNotifier, ImageCanvas>(
  (ref) => ImageCanvasNotifier(),
);

final imageCanvasControlsProvider =
    StateNotifierProvider<ImageCanvasControlsNotifier, ImageCanvasControls>(
  (ref) => ImageCanvasControlsNotifier(),
);

final imageCanvasFrameProvider =
    StateNotifierProvider<ImageCanvasFrameNotifier, ImageCanvasFrame>(
  (ref) => ImageCanvasFrameNotifier(),
);

final imageCanvasFrameWithSizeProvider = Provider<ImageCanvasFrame>((ref) {
  final settings = ref.watch(generateSettingsProvider);
  final frame = ref.watch(imageCanvasFrameProvider);

  return frame.copyWith(
    pos: Rect.fromCenter(
      center: frame.pos.center,
      width: settings.width.toDouble(),
      height: settings.height.toDouble(),
    ),
  );
});
