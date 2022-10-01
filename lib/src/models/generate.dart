import 'package:flutter/foundation.dart';

class GeneratePrompt {
  final String prompt;
  final List<int>? imagePng;
  final List<int>? maskPng;

  const GeneratePrompt({
    this.prompt = "",
    this.imagePng,
    this.maskPng,
  });

  GeneratePrompt copyWith({
    String? prompt,
    List<int>? imagePng,
    List<int>? maskPng,
  }) {
    return GeneratePrompt(
      prompt: prompt ?? this.prompt,
      imagePng: imagePng ?? this.imagePng,
      maskPng: maskPng ?? this.maskPng,
    );
  }
}

class GenerateSettings {
  final int width;
  final int height;
  final double cfgScale;
  final int steps;
  final int numberOfImages;
  final String sampler;
  final String engineID;
  final int seed;
  final double strength;

  const GenerateSettings({
    this.width = 512,
    this.height = 512,
    this.cfgScale = 7,
    this.steps = 50,
    this.numberOfImages = 1,
    this.sampler = "k_lms",
    this.engineID = "",
    this.seed = -1,
    this.strength = 1,
  });

  GenerateSettings copyWith({
    int? width,
    int? height,
    double? cfgScale,
    int? steps,
    int? numberOfImages,
    String? sampler,
    String? engineID,
    int? seed,
    double? strength,
  }) {
    return GenerateSettings(
      width: width ?? this.width,
      height: height ?? this.height,
      cfgScale: cfgScale ?? this.cfgScale,
      steps: steps ?? this.steps,
      numberOfImages: numberOfImages ?? this.numberOfImages,
      sampler: sampler ?? this.sampler,
      engineID: engineID ?? this.engineID,
      seed: seed ?? this.seed,
      strength: strength ?? this.strength,
    );
  }
}
