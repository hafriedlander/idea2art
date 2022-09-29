class GeneratePrompt {
  final String prompt;

  const GeneratePrompt({this.prompt = ""});

  GeneratePrompt copyWith({
    String? prompt,
  }) {
    return GeneratePrompt(prompt: prompt ?? this.prompt);
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

  const GenerateSettings({
    this.width = 512,
    this.height = 512,
    this.cfgScale = 7,
    this.steps = 50,
    this.numberOfImages = 1,
    this.sampler = "k_lms",
    this.engineID = "",
    this.seed = 0,
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
