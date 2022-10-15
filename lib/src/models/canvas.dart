import 'dart:ui' as ui;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/services/generate.dart';

@immutable
class ImageCanvasMaskStroke {
  final Iterable<Offset> points;
  final double r;

  const ImageCanvasMaskStroke({
    this.points = const <Offset>[],
    this.r = 10,
  });

  ImageCanvasMaskStroke copyWith({
    double? r,
    Iterable<Offset>? points,
  }) {
    return ImageCanvasMaskStroke(
      r: r ?? this.r,
      points: points ?? this.points,
    );
  }

  Rect? extents() {
    Rect? extents;

    for (final point in points) {
      final pointRect = Rect.fromPoints(
        point - Offset(r, r),
        point + Offset(r, r),
      );

      if (extents == null) {
        extents = pointRect;
      } else {
        extents = extents.expandToInclude(pointRect);
      }
    }

    return extents;
  }
}

@immutable
class ImageCanvasImage {
  static int keystate = 0;

  ImageCanvasImage({
    key = -1,
    required this.image,
    this.maskstrokes = const <ImageCanvasMaskStroke>[],
  }) {
    this.key = key < 0 ? (keystate++) : key;
  }

  late final int key;
  final ui.Image image;
  final List<ImageCanvasMaskStroke> maskstrokes;

  ImageCanvasImage copyWith({
    ui.Image? image,
    List<ImageCanvasMaskStroke>? maskstrokes,
  }) {
    return ImageCanvasImage(
      key: key,
      image: image ?? this.image,
      maskstrokes: maskstrokes ?? this.maskstrokes,
    );
  }

  // TODO: This shouldn't really be here
  void drawToCanvas(
    Canvas canvas, {
    ImageCanvasMaskStroke extraMask = const ImageCanvasMaskStroke(),
  }) {
    canvas.drawImage(image, Offset.zero, Paint());

    final maskPaint = Paint();
    maskPaint.color = Colors.red;
    maskPaint.strokeCap = ui.StrokeCap.round;
    maskPaint.blendMode = ui.BlendMode.clear;

    for (final mask in [...maskstrokes, extraMask]) {
      maskPaint.strokeWidth = mask.r * 2;
      canvas.drawPoints(
        ui.PointMode.polygon,
        mask.points.toList(),
        maskPaint,
      );
    }
  }
}

@immutable
class ImageCanvasImageSet {
  static int keystate = 0;

  late final int key;
  final Rect pos;
  final int total;

  final List<ImageCanvasImage> images;
  final int selectedKey;

  // Can use to re-generate more items
  final GeneratePrompt prompt;
  final GenerateSettings settings;

  // Can use to monitor progress
  final bool inProgress;
  final GenerateResult? result;

  ImageCanvasImageSet({
    key = -1,
    required this.pos,
    required this.total,
    required this.prompt,
    required this.settings,
    this.inProgress = false,
    this.result,
    this.images = const [],
    this.selectedKey = -1,
  }) {
    this.key = key < 0 ? (keystate++) : key;
  }

  ImageCanvasImageSet.fromCenterWH({
    key = -1,
    Offset center = const Offset(0, 0),
    required width,
    required height,
    required total,
    required prompt,
    required settings,
    inProgress = false,
    result,
    images = const <ImageCanvasImage>[],
  }) : this(
          key: key,
          pos: Rect.fromCenter(center: center, width: width, height: height),
          total: total,
          prompt: prompt,
          settings: settings,
          inProgress: inProgress,
          result: result,
          images: images,
        );

  copyWith({
    Rect? pos,
    int? total,
    GeneratePrompt? prompt,
    GenerateSettings? settings,
    bool? inProgress,
    GenerateResult? result,
    List<ImageCanvasImage>? images,
    int? selectedKey,
  }) {
    return ImageCanvasImageSet(
      key: key,
      total: total ?? this.total,
      prompt: prompt ?? this.prompt,
      settings: settings ?? this.settings,
      pos: pos ?? this.pos,
      inProgress: inProgress ?? this.inProgress,
      result: result ?? this.result,
      images: images ?? this.images,
      selectedKey: selectedKey ?? this.selectedKey,
    );
  }

  ImageCanvasImage? selectedImage() {
    if (selectedKey > -1) {
      return images.firstWhereOrNull((image) => image.key == selectedKey);
    } else {
      return images.firstOrNull;
    }
  }
}

@immutable
class ImageCanvas {
  ImageCanvas({
    this.imagesets = const <ImageCanvasImageSet>[],
    this.buildingMask = const ImageCanvasMaskStroke(),
    this.selectedKey = -1,
  });

  final List<ImageCanvasImageSet> imagesets;
  final int selectedKey;
  final ImageCanvasMaskStroke buildingMask;

  ImageCanvas copyWith({
    List<ImageCanvasImageSet>? imagesets,
    int? selectedKey,
    ImageCanvasMaskStroke? buildingMask,
  }) {
    return ImageCanvas(
      imagesets: imagesets ?? this.imagesets,
      selectedKey: selectedKey ?? this.selectedKey,
      buildingMask: buildingMask ?? this.buildingMask,
    );
  }

  ImageCanvasImageSet? selectedImageset() {
    if (selectedKey >= 0) return this[selectedKey];
    return null;
  }

  ImageCanvasImageSet? operator [](int setKey) {
    return imagesets.firstWhereOrNull((imageset) => imageset.key == setKey);
  }
}

@immutable
class ImageCanvasFrame {
  final Rect pos;

  ImageCanvasFrame({
    this.pos = Rect.zero,
  });

  ImageCanvasFrame copyWith({
    Rect? pos,
  }) {
    return ImageCanvasFrame(
      pos: pos ?? this.pos,
    );
  }
}

enum ImageCanvasMode {
  auto,
  create,
  variants,
  fill,
  mask,
}

@immutable
class ImageCanvasControls {
  ImageCanvasControls({
    this.mode = ImageCanvasMode.auto,
    this.maskRadius = 32,
  });

  final ImageCanvasMode mode;
  final double maskRadius;

  ImageCanvasControls copyWith({
    ImageCanvasMode? mode,
    double? maskRadius,
  }) {
    return ImageCanvasControls(
      mode: mode ?? this.mode,
      maskRadius: maskRadius ?? this.maskRadius,
    );
  }

  bool isGenerationMode() {
    return mode == ImageCanvasMode.auto ||
        mode == ImageCanvasMode.create ||
        mode == ImageCanvasMode.variants ||
        mode == ImageCanvasMode.fill;
  }
}
