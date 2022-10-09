import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/utils.dart';
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

final generateServiceBusyProvider =
    StateNotifierProvider<BusyNotifier, bool>((ref) {
  final service = ref.watch(generateServiceProvider);

  final serviceValue = service.value;
  if (serviceValue != null) {
    return serviceValue.busy;
  }

  return BusyNotifier();
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

final generateServiceAvailableProvider = Provider<bool>((ref) {
  final prompt = ref.watch(generatePromptProvider);
  final engine = ref.watch(generateSettingsEngineProvider);
  final service = ref.watch(generateServiceProvider);
  final busy = ref.watch(generateServiceBusyProvider);

  return service.hasValue &&
      prompt.prompt.isNotEmpty &&
      engine != null &&
      !busy;
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

/// An extension on [Ref] with helpful methods to add a debounce.
extension RefDebounceExtension on Ref {
  /// Delays an execution by a bit such that if a dependency changes multiple
  /// time rapidly, the rest of the code is only run once.
  Future<void> debounce(Duration duration) {
    final completer = Completer<void>();
    final timer = Timer(duration, () {
      if (!completer.isCompleted) completer.complete();
    });
    onDispose(() {
      timer.cancel();
      if (!completer.isCompleted) {
        completer.completeError(StateError('Cancelled'));
      }
    });
    return completer.future;
  }
}

const imageCanvasFrameModeDebounce = Duration(milliseconds: 2);
final imageCanvasFrameModeStopwatch = Stopwatch();

final imageCanvasFrameModeProvider =
    FutureProvider<ImageCanvasMode>((ref) async {
  final frame = ref.watch(imageCanvasFrameWithSizeProvider);
  final imageCanvas = ref.watch(imageCanvasProvider);

  // This is potentially a fairly expensive operation, so debounce a little
  await ref.debounce(imageCanvasFrameModeDebounce);

  try {
    imageCanvasFrameModeStopwatch.reset();
    imageCanvasFrameModeStopwatch.start();
    final res = await GenerationExecuter.testImageMode(frame.pos, imageCanvas);
    imageCanvasFrameModeStopwatch.stop();

    if (imageCanvasFrameModeStopwatch.elapsed >
        imageCanvasFrameModeDebounce * 0.5) {
      debugPrint(
          "Warning - frame mode calculation took longer than half of debounce time, ${imageCanvasFrameModeStopwatch.elapsedMilliseconds}ms");
    }

    return res;
  } catch (e) {
    debugPrint("Ouch, ${e}");
  }

  return ImageCanvasMode.create;
});
