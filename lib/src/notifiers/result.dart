import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/results.dart';

class ResultImagesNotifier extends StateNotifier<ResultImages> {
  ResultImagesNotifier() : super(ResultImages());

  void add(ImageProvider image) {
    state = state.copyWith(images: [...state.images, image]);
  }

  void clear() {
    state = state.copyWith(images: [], count: 0);
  }
}
