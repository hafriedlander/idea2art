import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneratePrompt {
  const GeneratePrompt({this.prompt = ""});

  final String prompt;

  GeneratePrompt copyWith({
    String? prompt,
  }) {
    return GeneratePrompt(prompt: prompt ?? this.prompt);
  }
}

class GeneratePromptNotifier extends StateNotifier<GeneratePrompt> {
  GeneratePromptNotifier() : super(const GeneratePrompt());

  void setPrompt(String prompt) {
    state = state.copyWith(prompt: prompt);
  }
}

class GenerateSettings {
  const GenerateSettings({
    this.width = 512,
    this.height = 512,
    this.cfgScale = 7,
    this.steps = 50,
    this.numberOfImages = 1,
    this.sampler = "k_lms",
    this.engineID = "",
    this.seed = 1,
  });

  final int width;
  final int height;
  final double cfgScale;
  final int steps;
  final int numberOfImages;
  final String sampler;
  final String engineID;
  final int seed;

  GenerateSettings copyWith({
    int? width,
    int? height,
    double? cfgScale,
    int? steps,
    int? numberOfImages,
    String? sampler,
    String? engineID,
    int? seed,
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
    );
  }
}

class GenerateSettingsNotifier extends StateNotifier<GenerateSettings> {
  GenerateSettingsNotifier() : super(const GenerateSettings());

  void setWidth(int width) {
    state = state.copyWith(width: width);
  }

  void setHeight(int height) {
    state = state.copyWith(height: height);
  }

  void setCfgScale(double cfgScale) {
    state = state.copyWith(cfgScale: cfgScale);
  }

  void setSteps(int steps) {
    state = state.copyWith(steps: steps);
  }

  void setNumberOfImages(int numberOfImages) {
    state = state.copyWith(numberOfImages: numberOfImages);
  }

  void setSeed(int seed) {
    state = state.copyWith(seed: seed);
  }
}
