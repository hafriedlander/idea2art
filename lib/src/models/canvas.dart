import 'dart:ui' as ui;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:idea2art/src/models/generate.dart';
import 'package:image/image.dart' as di;

class ImageCanvasMaskStroke {}

class ImageCanvasImage {
  static int keystate = 0;

  late final int key;

  ImageCanvasImage({
    key = -1,
    required this.image,
    this.maskstrokes = const <ImageCanvasMaskStroke>[],
  }) {
    this.key = key < 0 ? (keystate++) : key;
  }

  final ui.Image image;
  final List<ImageCanvasMaskStroke> maskstrokes;

  copyWith({
    ui.Image? image,
    List<ImageCanvasMaskStroke>? maskstrokes,
  }) {
    return ImageCanvasImage(
      key: key,
      image: image ?? this.image,
      maskstrokes: maskstrokes ?? this.maskstrokes,
    );
  }
}

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
  final Stream? stream;

  ImageCanvasImageSet({
    key = -1,
    required this.pos,
    required this.total,
    required this.prompt,
    required this.settings,
    this.stream,
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
    stream,
    images = const <ImageCanvasImage>[],
  }) : this(
          key: key,
          pos: Rect.fromCenter(center: center, width: width, height: height),
          total: total,
          prompt: prompt,
          settings: settings,
          stream: stream,
          images: images,
        );

  copyWith({
    Rect? pos,
    List<ImageCanvasImage>? images,
    int? selectedKey,
  }) {
    return ImageCanvasImageSet(
        key: key,
        total: total,
        prompt: prompt,
        settings: settings,
        pos: pos ?? this.pos,
        stream: stream,
        images: images ?? this.images,
        selectedKey: selectedKey ?? this.selectedKey);
  }

  ImageCanvasImage? selectedImage() {
    if (selectedKey > -1) {
      return images.firstWhereOrNull((image) => image.key == selectedKey);
    } else {
      return images.firstOrNull;
    }
  }
}

class ImageCanvas {
  ImageCanvas({
    this.imagesets = const <ImageCanvasImageSet>[],
    this.selectedKey = -1,
  });

  final List<ImageCanvasImageSet> imagesets;
  final int selectedKey;

  copyWith({
    List<ImageCanvasImageSet>? imagesets,
    int? selectedKey,
  }) {
    return ImageCanvas(
      imagesets: imagesets ?? this.imagesets,
      selectedKey: selectedKey ?? this.selectedKey,
    );
  }

  ImageCanvasImageSet? selectedImageset() {
    if (selectedKey >= 0) {
      return imagesets.firstWhereOrNull(
        (imageset) => imageset.key == selectedKey,
      );
    }
    return null;
  }
}

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
  frame,
  image,
  mask,
  draw,
}

class ImageCanvasControls {
  ImageCanvasControls({this.mode = ImageCanvasMode.frame});

  final ImageCanvasMode mode;

  copyWith({
    ImageCanvasMode? mode,
  }) {
    ImageCanvasControls(
      mode: mode ?? this.mode,
    );
  }
}
