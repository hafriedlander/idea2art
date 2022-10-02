import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/canvas.dart';
import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/services/generate.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as di;

class ImageCanvasNotifier extends StateNotifier<ImageCanvas> {
  ImageCanvasNotifier() : super(ImageCanvas());

  // -- For ImageSet --

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

  void delete(int setKey) {
    state = state.copyWith(
      imagesets: state.imagesets.where((set) => set.key != setKey).toList(),
    );
  }

  void clear() {
    state = state.copyWith(imagesets: []);
  }

  ImageCanvas _adjustImageset(
    int setKey,
    ImageCanvasImageSet Function(ImageCanvasImageSet set) callback,
  ) {
    return state.copyWith(
      imagesets: state.imagesets.map<ImageCanvasImageSet>((set) {
        return (set.key == setKey) ? callback(set) : set;
      }).toList(),
    );
  }

  void setResult(int setKey, GenerateResult result) {
    state = _adjustImageset(
      setKey,
      (set) => set.copyWith(result: result),
    );
  }

  void setSettings(int setKey, GenerateSettings settings) {
    state = _adjustImageset(
      setKey,
      (set) => set.copyWith(settings: settings),
    );
  }

  void setTotal(int setKey, int total) {
    state = _adjustImageset(
      setKey,
      (set) => set.copyWith(total: total),
    );
  }

  void increaseTotal(int setKey, int extra) {
    state = _adjustImageset(
      setKey,
      (set) => set.copyWith(total: set.total + extra),
    );
  }

  void setInProgress(int setKey, bool inProgress) {
    // Special case - if the imageset is no longer in progress, and is empty, remove it
    if (inProgress == false && state[setKey]?.images.length == 0) {
      state = state.copyWith(
        imagesets: state.imagesets
            .where((imageset) => imageset.key != setKey)
            .toList(),
        selectedKey: state.selectedKey == setKey ? -1 : state.selectedKey,
      );
    } else {
      state = _adjustImageset(
        setKey,
        (set) => set.copyWith(inProgress: inProgress),
      );
    }
  }

  void cancel(int setKey) {
    state[setKey]?.result?.cancel();
    setTotal(setKey, state[setKey]?.images.length ?? 0);
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

  void addImageToSet(int setKey, ImageCanvasImage image) {
    state = _adjustImageset(
      setKey,
      (set) => set.copyWith(
        images: [...set.images, image],
      ),
    );
  }

  void addUIImageToSet(int setKey, ui.Image image) {
    addImageToSet(setKey, ImageCanvasImage(image: image));
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
