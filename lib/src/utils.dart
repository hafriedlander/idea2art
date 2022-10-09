import 'dart:collection';
import 'dart:convert';
import 'dart:html' as html;
import 'dart:math';
import 'dart:ui' as ui;
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as di;
//import 'package:flutter/painting.dart' as paint;
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/src/models/canvas.dart';
import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/providers.dart';

FocusNode useFocusCallback(
    TextEditingController controller, void Function(String val) callback) {
  final focusNode = useFocusNode();

  bool currentFocus = false;
  String initialText = "";

  focusNode.addListener(() {
    if (focusNode.hasFocus) {
      currentFocus = true;
      initialText = controller.text;
    } else {
      final String newText = controller.text;
      if (currentFocus && initialText != newText) callback(newText);
      currentFocus = false;
      initialText = "";
    }
  });

  return focusNode;
}

@deprecated
class DIImage {
  final di.Image image;
  final Rect pos;

  DIImage({
    required this.image,
    required this.pos,
  });

  DIImage.fromBytes({
    required ByteData bytes,
    required pos,
  }) : this(
          image: di.Image.fromBytes(
            pos.width,
            pos.height,
            Uint8List.view(bytes.buffer).toList(),
            // TODO: This seems wrong, the bytes should definitely be in RGBA order. Bug in Flutter or Image?
            format: di.Format.bgra,
          ),
          pos: pos,
        );
}

Future<ui.Image> paintToImage(
  void Function(Canvas canvas) callback,
  Size size, {
  ui.PictureRecorder? recorder,
  Canvas? canvas,
}) async {
  final recorderOrDefault = recorder ?? ui.PictureRecorder();
  final canvasOrDefault = canvas ?? Canvas(recorderOrDefault);

  callback(canvasOrDefault);
  final recording = recorderOrDefault.endRecording();

  try {
    final image = await recording.toImage(
      size.width.toInt(),
      size.height.toInt(),
    );

    // TODO: Warning, nasty hack.
    // The previous statement could have caused a WebGL issue.
    // This forces re-render of the UI
    await SchedulerBinding.instance.endOfFrame;
    (PlatformDispatcher.instance as dynamic).invokeOnMetricsChanged();

    return image;
  } finally {
    recording.dispose();
  }
}

class GenerationExecuter {
  static void generate(
    WidgetRef ref,
    int setKey,
    GeneratePrompt prompt,
    GenerateSettings settings,
  ) async {
    final service = ref.read(generateServiceProvider).value;
    final imageCanvasNotifier = ref.read(imageCanvasProvider.notifier);

    if (service != null) {
      final result = service.generate(
        prompt,
        settings,
      );

      imageCanvasNotifier.setInProgress(setKey, true);
      imageCanvasNotifier.setResult(setKey, result);

      await for (final image in result.uiimages) {
        imageCanvasNotifier.addUIImageToSet(setKey, image);
      }

      imageCanvasNotifier.setInProgress(setKey, false);
    }
  }

  static void generateForExistingImageset(
    WidgetRef ref,
    ImageCanvasImageSet set,
  ) async {
    final settings = set.settings.copyWith(
      seed: set.settings.seed + set.settings.numberOfImages,
      numberOfImages: 4,
    );

    ref.read(imageCanvasProvider.notifier)
      ..setSettings(set.key, settings)
      ..increaseTotal(set.key, settings.numberOfImages);

    generate(
      ref,
      set.key,
      set.prompt,
      settings,
    );
  }

  static Future<ui.Image> stackImages(
    Rect area,
    Iterable<ImageCanvasImageSet> imagesets,
    Paint paint, {
    void Function(Canvas)? callback,
    ui.PictureRecorder? recorder,
    Canvas? canvas,
  }) {
    return paintToImage((canvas) {
      for (final imageset in imagesets) {
        ImageCanvasImage? selected = imageset.selectedImage();
        if (selected == null) continue;

        canvas.saveLayer(null, paint);

        final translate = imageset.pos.topLeft - area.topLeft;
        canvas.translate(translate.dx, translate.dy);

        selected.drawToCanvas(canvas);

        canvas.restore();

        if (callback != null) callback(canvas);
      }
    }, area.size, recorder: recorder, canvas: canvas);
  }

  static void generateForNewImageset(WidgetRef ref) async {
    final imageCanvas = ref.read(imageCanvasProvider);
    final imageFrame = ref.read(imageCanvasFrameWithSizeProvider);
    var mode = ref.read(imageCanvasControlsProvider).mode;

    // If mode is auto, recalulate it to be sure we're not lagged
    if (mode == ImageCanvasMode.auto) {
      mode = await testImageModeWithCanvas(
        imageFrame.pos,
        imageCanvas,
      );
    }

    ByteData? image;
    ByteData? mask;

    var prompt = ref.read(generatePromptProvider);
    var settings = ref.read(generateSettingsProvider);
    final engine = ref.read(generateSettingsEngineProvider);

    if (mode != ImageCanvasMode.create) {
      const variantExpand = 256.0;
      const variantExpandOffset = Offset(variantExpand, variantExpand);

      final frame = (mode == ImageCanvasMode.variants)
          ? imageFrame.pos.inflate(variantExpand)
          : imageFrame.pos;

      var overlaps = imageCanvas.imagesets.where(
        (set) => frame.overlaps(set.pos),
      );

      if (overlaps.isNotEmpty) {
        final paintSrc = Paint();
        paintSrc.blendMode = BlendMode.srcOver;

        // Step 1 - build image

        final imageAsUI = await stackImages(frame, overlaps, paintSrc);

        // Step 2 - remove image alphas from white to build mask source
        // The mode "dstOut" is the trick here, removing the dst where there is src

        final maskRecorder = ui.PictureRecorder();
        final maskCanvas = Canvas(maskRecorder);

        final paintWhite = Paint();
        paintWhite.color = Colors.white;
        paintWhite.blendMode = BlendMode.src;

        maskCanvas.drawRect(
          Rect.fromLTWH(0, 0, frame.width, frame.height),
          paintWhite,
        );

        final paintDstOut = Paint();
        paintDstOut.blendMode = BlendMode.dstOut;

        final maskAsUI = await stackImages(
          frame,
          overlaps,
          paintDstOut,
          recorder: maskRecorder,
          canvas: maskCanvas,
          callback: (canvas) {
            // Step 2.5 - for variants, make the actual frame white again
            if (mode == ImageCanvasMode.variants) {
              canvas.drawRect(
                variantExpandOffset & imageFrame.pos.size,
                paintWhite,
              );
            }
          },
        );

        // Step 3 - convert to PNG. We can do the channel math on the server now

        image = await imageAsUI.toByteData(format: ui.ImageByteFormat.png);
        mask = await maskAsUI.toByteData(format: ui.ImageByteFormat.png);

        imageAsUI.dispose();
        maskAsUI.dispose();

        prompt = prompt.copyWith(
            imagePng:
                image != null ? Uint8List.view(image.buffer).toList() : null,
            maskPng: mask != null ? Uint8List.view(mask.buffer).toList() : null,
            maskShift: mode == ImageCanvasMode.variants
                ? MaskShift.towardsExposed
                : MaskShift.towardsProtected,
            crop: mode == ImageCanvasMode.variants
                ? variantExpandOffset & imageFrame.pos.size
                : null);
      }
    }

    settings = settings.copyWith(
      engineID: engine?.id ?? "Unknown",
      seed: settings.seed <= 0 ? Random().nextInt(4294967295) : settings.seed,
      strength: mode == ImageCanvasMode.variants ? 0.6 : 1.0,
    );

    final set = ImageCanvasImageSet.fromCenterWH(
      center: imageFrame.pos.center,
      width: settings.width,
      height: settings.height,
      total: settings.numberOfImages,
      prompt: prompt,
      settings: settings,
    );

    ref.read(imageCanvasProvider.notifier).add(set);
    ref.read(imageCanvasProvider.notifier).selectByImageset(set);

    if (false) {
      if (image != null)
        ref.read(imageCanvasProvider.notifier).addUIImageToSet(
            set.key, await decodeImageFromList(Uint8List.view(image.buffer)));
    }

    if (false) {
      if (mask != null)
        ref.read(imageCanvasProvider.notifier).addUIImageToSet(
            set.key, await decodeImageFromList(Uint8List.view(mask.buffer)));
    }

    generate(ref, set.key, prompt, settings);
  }

  static void downloadImages(ref) async {
    final ImageCanvas imageCanvas = ref.read(imageCanvasProvider);

    Rect extents = Rect.zero;
    for (final imageset in imageCanvas.imagesets) {
      extents = extents.expandToInclude(imageset.pos);
    }

    final imageAsUI = await stackImages(
      extents,
      imageCanvas.imagesets,
      Paint(),
    );

    final image = await imageAsUI.toByteData(format: ui.ImageByteFormat.png);
    const filename = "idea2art.png";

    // Encode our file in base64
    final base64 = base64Encode(Uint8List.view(image!.buffer).toList());

    // Create the link with the file
    final anchor =
        html.AnchorElement(href: 'data:application/octet-stream;base64,$base64')
          ..target = 'blank';

    // add the name
    anchor.download = filename;

    // trigger download
    html.document.body?.append(anchor);
    anchor.click();
    anchor.remove();

    imageAsUI.dispose();
  }

  /* This is a nice solution, and maybe good for mobile. At the moment
  I'm avoiding it on web until https://github.com/flutter/flutter/issues/113094
  is fixed */
  static Future<ImageCanvasMode> testImageModeWithCanvas(
      Rect frame, ImageCanvas imageCanvas) async {
    final overlaps =
        imageCanvas.imagesets.where((imageset) => imageset.pos.overlaps(frame));

    ui.Image stacked = await stackImages(
      frame,
      overlaps,
      Paint(),
    );

    // We scan a downscaled version - although we can't downscale too much or we'll miss stuff
    final scanSize = frame.size ~/ 16;

    // Use medium quality to loose the least possible during downscale
    final paint = Paint();
    paint.filterQuality = FilterQuality.medium;

    final image = await paintToImage((canvas) async {
      canvas.drawImageRect(
        stacked,
        Offset.zero & frame.size,
        Offset.zero & scanSize,
        paint,
      );
    }, scanSize);

    try {
      final byteData = await image.toByteData(
        format: ui.ImageByteFormat.rawStraightRgba,
      );

      if (byteData == null) {
        debugPrint("null");
      } else {
        final bytes = byteData.buffer.asUint8List();

        int sum = 0;
        for (var i = 0; i < bytes.length; i += 4) {
          if (bytes[i + 3] != 0) sum++;
        }

        if (sum == 0) {
          return ImageCanvasMode.create;
        } else if (sum < bytes.length / 4) {
          return ImageCanvasMode.fill;
        } else {
          return ImageCanvasMode.variants;
        }
      }
    } finally {
      stacked.dispose();
      image.dispose();
    }

    return ImageCanvasMode.create;
  }

  // Return the volume of the area in rect which is not also covered by
  // any of the others
  static double exclusiveIntersectionVolume(Rect rect, Iterable<Rect> others) {
    final intersections = others
        .map((other) => rect.intersect(other))
        .where((intersect) => intersect.volume > 0);

    final coverages = <double>[];
    final considered = <Rect>[];

    for (final intersection in intersections) {
      coverages.add(exclusiveIntersectionVolume(intersection, considered));
      considered.add(intersection);
    }

    return rect.volume - coverages.sum;
  }

  static Future<ImageCanvasMode> testImageMode(
    Rect frame,
    ImageCanvas imageCanvas,
  ) async {
    final intersections = imageCanvas.imagesets
        .map<Rect>((set) => set.pos.intersect(frame))
        .where((rect) => rect.volume > 0);

    // No intersections, so it's easy, this is a create
    if (intersections.isEmpty) return ImageCanvasMode.create;

    // We want the contribution for each intersection, excluding
    // any intersections we've already counted

    final coverages = <double>[];
    final considered = <Rect>[];

    for (final intersection in intersections) {
      coverages.add(exclusiveIntersectionVolume(intersection, considered));
      considered.add(intersection);
    }

    // debugPrint("${frame.volume} ${coverages}");

    if (coverages.sum >= frame.volume) return ImageCanvasMode.variants;
    return ImageCanvasMode.fill;
  }
}

extension VolumeExtension on Rect {
  double get volume {
    return width * height;
  }
}
