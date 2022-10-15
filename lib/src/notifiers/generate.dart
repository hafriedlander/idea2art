import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/generated/generation.pb.dart';
import 'package:idea2art/src/models/engine.dart';
import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/providers.dart';

class GeneratePromptNotifier extends StateNotifier<GeneratePrompt> {
  GeneratePromptNotifier() : super(const GeneratePrompt());

  void setPrompt(String prompt) {
    state = state.copyWith(prompt: prompt);
  }
}

class GenerateSettingsNotifier extends StateNotifier<GenerateSettings> {
  GenerateSettingsNotifier(this.ref) : super(const GenerateSettings());

  final Ref ref;

  /*
  void loadEngineID() {
    final value = ref.read(enginesProvider).value;
    final current = state.engineID;

    if (value != null) {
      final engineIDs = value.engines.map<String>((engine) => engine.id);
      print("Boop ${engineIDs.toString()}");

      if (!engineIDs.contains(current))
        state = state.copyWith(engineID: engineIDs.first);
    }
  }
  */

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

  void setSampler(DiffusionSampler sampler) {
    state = state.copyWith(sampler: sampler);
  }

  void setETA(double eta) {
    state = state.copyWith(eta: eta);
  }

  void setEngineID(String engineID) {
    state = state.copyWith(engineID: engineID);
  }

  void setSeed(int seed) {
    state = state.copyWith(seed: seed);
  }
}
