import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/canvas.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as di;

class ImageCanvasNotifier extends StateNotifier<ImageCanvas> {
  ImageCanvasNotifier() : super(ImageCanvas());

  void add(ImageCanvasImageSet imageset) {
    state = state.copyWith(imagesets: [...state.imagesets, imageset]);
  }

  void select(int selectedKey) {
    state = state.copyWith(selectedKey: selectedKey);
  }

  void selectByImageset(ImageCanvasImageSet imageset) {
    state = state.copyWith(selectedKey: imageset.key);
  }

  void unselect() {
    state = state.copyWith(selectedKey: -1);
  }

  void selectImageFromSet(int setKey, int imageKey) {
    state = state.copyWith(
      imagesets: state.imagesets.map<ImageCanvasImageSet>((set) {
        if (set.key == setKey) {
          return set.copyWith(selectedKey: imageKey);
        }
        return set;
      }).toList(),
    );
  }

  void addImageToSet(ImageCanvasImageSet imageset, ImageCanvasImage image) {
    state = state.copyWith(
      imagesets: state.imagesets.map<ImageCanvasImageSet>((set) {
        if (set.key == imageset.key) {
          return set.copyWith(images: [...set.images, image]);
        }
        return set;
      }).toList(),
    );
  }

  void addUIImageToSet(ImageCanvasImageSet imageset, ui.Image image) {
    addImageToSet(imageset, ImageCanvasImage(image: image));
  }

  void setImageSetCenter(int imagesetkey, Offset center) {
    state = state.copyWith(
      imagesets: state.imagesets.map<ImageCanvasImageSet>((set) {
        if (set.key == imagesetkey) {
          return set.copyWith(
            pos: Rect.fromCenter(
              center: center,
              width: set.pos.width,
              height: set.pos.height,
            ),
          );
        }
        return set;
      }).toList(),
    );
  }

  void clear() {
    state = state.copyWith(imagesets: []);
  }
}

class ImageCanvasFrameNotifier extends StateNotifier<ImageCanvasFrame> {
  ImageCanvasFrameNotifier() : super(ImageCanvasFrame());

  void setCenter(Offset center) {
    state = state.copyWith(
      pos: Rect.fromCenter(
        center: center,
        width: state.pos.width,
        height: state.pos.height,
      ),
    );
  }
}

class ImageCanvasControlsNotifier extends StateNotifier<ImageCanvasControls> {
  ImageCanvasControlsNotifier() : super(ImageCanvasControls());

  void setMode(ImageCanvasMode mode) {
    state = state.copyWith(mode: mode);
  }
}
