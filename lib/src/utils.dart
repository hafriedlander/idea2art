import 'dart:convert';
import 'dart:html' as html;
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as di;

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

  static void generateForNewImageset(WidgetRef ref) async {
    final imageCanvas = ref.read(imageCanvasProvider);
    final imageFrame = ref.read(imageCanvasFrameWithSizeProvider);

    var overlaps = <ImageCanvasImageSet>[];

    for (final imageset in imageCanvas.imagesets) {
      if (imageset.pos.overlaps(imageFrame.pos)) {
        overlaps.add(imageset);
      }
    }

    ByteData? image;
    di.Image? mask;

    if (overlaps.isNotEmpty) {
      final paintSrc = Paint();
      paintSrc.blendMode = BlendMode.src;

      // Step 1 - build image

      final imageAsUI = await stackImages(imageFrame.pos, overlaps, paintSrc);

      // Step 2 - remove image alphas from white to build mask source

      final maskRecorder = ui.PictureRecorder();
      final maskCanvas = Canvas(maskRecorder);

      final paintWhite = Paint();
      paintWhite.color = Colors.white;
      paintWhite.blendMode = BlendMode.src;

      maskCanvas.drawRect(
        Rect.fromLTWH(0, 0, imageFrame.pos.width, imageFrame.pos.height),
        paintWhite,
      );

      final paintDstOut = Paint();
      paintDstOut.blendMode = BlendMode.dstOut;

      final maskAsUI = await stackImages(
        imageFrame.pos,
        overlaps,
        paintDstOut,
        maskRecorder,
        maskCanvas,
      );

      // Step 3 - blur mask

      final blurRecorder = ui.PictureRecorder();
      final blurCanvas = Canvas(blurRecorder);

      var paintBlur = Paint();
      paintBlur.blendMode = BlendMode.src;
      paintBlur.imageFilter = ui.ImageFilter.blur(
        sigmaX: 64,
        sigmaY: 64,
        tileMode: TileMode.clamp,
      );

      blurCanvas.drawImage(maskAsUI, Offset(0, 0), paintBlur);

      final blurRecording = blurRecorder.endRecording();
      final blurAsUI = await blurRecording.toImage(
        imageFrame.pos.width.toInt(),
        imageFrame.pos.height.toInt(),
      );

      // Step 4 - convert image straight to PNG, we don't need pixels

      image = await imageAsUI.toByteData(format: ui.ImageByteFormat.png);

      // Step 5 - channel math to double alpha and then pull into red channel
      // Doubling means the area outside the overlap images will be pure white
      // We can't do with canvas, so convert to di.Image

      final bytes = await blurAsUI.toByteData(
        format: ui.ImageByteFormat.rawStraightRgba,
      );

      mask = di.Image.fromBytes(
        imageFrame.pos.width.toInt(),
        imageFrame.pos.height.toInt(),
        Uint8List.view(bytes!.buffer).toList(),
        format: di.Format.rgba,
      );

      final maskb = mask.getBytes();

      // And then adjust so out-of-image area is always white
      for (var i = 0, len = maskb.length; i < len; i += 4) {
        maskb[i] = maskb[i + 1] = maskb[i + 2] = min(255, maskb[i + 3] * 2);
        maskb[i + 3] = 255;
      }
    }

    final prompt = ref.read(generatePromptProvider);
    final settings = ref.read(generateSettingsProvider);
    final engine = ref.read(generateSettingsEngineProvider);

    final adjustedPrompt = prompt.copyWith(
      imagePng: image != null ? Uint8List.view(image.buffer).toList() : null,
      maskPng: mask != null ? di.encodePng(mask) : null,
    );

    final adjustedSettings = settings.copyWith(
      engineID: engine?.id ?? "Unknown",
      seed: settings.seed <= 0 ? Random().nextInt(4294967295) : settings.seed,
    );

    final set = ImageCanvasImageSet.fromCenterWH(
      center: imageFrame.pos.center,
      width: settings.width,
      height: settings.height,
      total: settings.numberOfImages,
      prompt: adjustedPrompt,
      settings: adjustedSettings,
    );

    ref.read(imageCanvasProvider.notifier).add(set);
    ref.read(imageCanvasProvider.notifier).selectByImageset(set);

    /*
    if (image != null)
      ref.read(imageCanvasProvider.notifier).addUIImageToSet(
          set.key, await decodeImageFromList(Uint8List.view(image.buffer)));

    if (mask != null)
      ref.read(imageCanvasProvider.notifier).addUIImageToSet(set.key,
          await decodeImageFromList(Uint8List.fromList(di.encodePng(mask))));
    */

    generate(ref, set.key, adjustedPrompt, adjustedSettings);
  }

  static Future<ui.Image> stackImages(
    Rect area,
    List<ImageCanvasImageSet> imagesets,
    Paint paint, [
    ui.PictureRecorder? _recorder,
    Canvas? _canvas,
  ]) async {
    final recorder = _recorder ?? ui.PictureRecorder();
    final canvas = _canvas ?? Canvas(recorder);

    for (final imageset in imagesets) {
      ImageCanvasImage? selected = imageset.selectedImage();
      if (selected == null) continue;

      canvas.drawImage(
        selected.image,
        Offset(
          imageset.pos.left - area.left,
          imageset.pos.top - area.top,
        ),
        paint,
      );
    }

    final recording = recorder.endRecording();
    return await recording.toImage(
      area.width.toInt(),
      area.height.toInt(),
    );
  }

  static void downloadImages(ref) async {
    final ImageCanvas imageCanvas = ref.read(imageCanvasProvider);

    Rect extents = Rect.zero;
    for (final imageset in imageCanvas.imagesets) {
      extents = extents.expandToInclude(imageset.pos);
    }

    final imageAsUI =
        await stackImages(extents, imageCanvas.imagesets, Paint());
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
  }
}
