import 'package:flutter/material.dart';

class ResultImages {
  final List<ImageProvider> images;
  final int count;

  ResultImages({this.images = const [], this.count = 0});

  ResultImages copyWith({
    List<ImageProvider>? images,
    int? count,
  }) {
    return ResultImages(
      images: images ?? this.images,
      count: count ?? this.count,
    );
  }
}
