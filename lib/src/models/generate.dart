import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:idea2art/src/generated/generation.pbenum.dart';

enum MaskShift {
  towardsProtected,
  towardsExposed,
  noShift,
}

const SamplerStrings = {
  DiffusionSampler.SAMPLER_DDIM: "DDIM",
  DiffusionSampler.SAMPLER_DDPM: "DDPM / PLMS",
  DiffusionSampler.SAMPLER_K_DPM_2: "DPM 2",
  DiffusionSampler.SAMPLER_K_DPM_2_ANCESTRAL: "DPM 2 Ancestral",
  DiffusionSampler.SAMPLER_K_EULER: "Euler",
  DiffusionSampler.SAMPLER_K_EULER_ANCESTRAL: "Euler Ancestral",
  DiffusionSampler.SAMPLER_K_HEUN: "Huen",
  DiffusionSampler.SAMPLER_K_LMS: "LMS"
};

class GeneratePrompt {
  final String prompt;
  final List<int>? imagePng;
  final List<int>? maskPng;
  final Rect? crop;
  final MaskShift maskShift;

  const GeneratePrompt(
      {this.prompt = "A Teddybear",
      this.imagePng,
      this.maskPng,
      this.crop,
      this.maskShift = MaskShift.noShift});

  GeneratePrompt copyWith({
    String? prompt,
    List<int>? imagePng,
    List<int>? maskPng,
    Rect? crop,
    MaskShift? maskShift,
  }) {
    return GeneratePrompt(
      prompt: prompt ?? this.prompt,
      imagePng: imagePng ?? this.imagePng,
      maskPng: maskPng ?? this.maskPng,
      crop: crop ?? this.crop,
      maskShift: maskShift ?? this.maskShift,
    );
  }
}

class GenerateSettings {
  final int width;
  final int height;
  final double cfgScale;
  final int steps;
  final int numberOfImages;
  final DiffusionSampler sampler;
  final double eta;
  final String engineID;
  final int seed;
  final double strength;

  const GenerateSettings({
    this.width = 512,
    this.height = 512,
    this.cfgScale = 7,
    this.steps = 50,
    this.numberOfImages = 1,
    this.sampler = DiffusionSampler.SAMPLER_DDIM,
    this.eta = 0.8,
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
    DiffusionSampler? sampler,
    double? eta,
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
      eta: eta ?? this.eta,
      engineID: engineID ?? this.engineID,
      seed: seed ?? this.seed,
      strength: strength ?? this.strength,
    );
  }
}
