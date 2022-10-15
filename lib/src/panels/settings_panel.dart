import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/src/generated/generation.pb.dart';
import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/notifiers/generate.dart';
import 'package:idea2art/src/providers.dart';

class LabelledSettingControl extends StatelessWidget {
  LabelledSettingControl({
    required this.label,
    required this.description,
    this.subdescription,
    this.value,
    required this.child,
    this.padding = 0,
  });

  final String label;
  final String description;
  final String? subdescription;
  final String? value;
  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(value ?? ""),
          ],
        ),
        Text(description),
        Padding(
          padding:
              EdgeInsets.only(bottom: subdescription == null ? padding : 0),
          child: child,
        ),
        subdescription != null
            ? Padding(
                padding: EdgeInsets.only(bottom: padding),
                child: Text(subdescription!),
              )
            : Container(),
      ],
    );
  }
}

class GenerateSlider extends ConsumerWidget {
  final String label;
  final String description;
  final double min;
  final double max;
  final int divisions;
  final double Function(GenerateSettings) selector;
  final void Function(GenerateSettingsNotifier, double) changeHandler;

  const GenerateSlider(
      {required this.label,
      required this.description,
      required this.min,
      required this.max,
      required this.divisions,
      required this.selector,
      required this.changeHandler});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(generateSettingsProvider.select(selector));

    return LabelledSettingControl(
      label: label,
      description: description,
      value: value.toString(),
      child: Slider(
        value: value,
        min: min,
        max: max,
        divisions: divisions,
        label: value.toString(),
        onChanged: (double value) {
          changeHandler(ref.read(generateSettingsProvider.notifier), value);
        },
      ),
    );
  }
}

class EngineSelectorDropdown extends ConsumerWidget {
  const EngineSelectorDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final engines = ref.watch(enginesProvider).value;

    final engine = ref.watch(generateSettingsEngineProvider);

    if (engines != null && engine != null) {
      return LabelledSettingControl(
        label: "Engine",
        description:
            "Different engines provide different generation logic. Select an engine to see it's specific description",
        subdescription: engine.description,
        child: DropdownButton<String>(
          value: engine.id,
          icon: const Icon(Icons.arrow_downward),
          isExpanded: true,
          onChanged: (String? value) {
            if (value != null) {
              ref.read(generateSettingsProvider.notifier).setEngineID(value);
            }
          },
          items: engines.engines
              .map<DropdownMenuItem<String>>(
                (engine) => DropdownMenuItem<String>(
                  value: engine.id,
                  child: Text(engine.name),
                ),
              )
              .toList(),
        ),
      );
    }

    return const Text("Loading...");
  }
}

class SamplerSelectorDropdown extends ConsumerWidget {
  const SamplerSelectorDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final samplers = SamplerStrings;

    final sampler = ref.watch(
      generateSettingsProvider.select((settings) => settings.sampler),
    );

    return LabelledSettingControl(
      label: "Sampler",
      description:
          "Different samplers can give different results with different aesthetics. Experiment and find your favourite.",
      padding: 10,
      child: DropdownButton<DiffusionSampler>(
        value: sampler,
        icon: const Icon(Icons.arrow_downward),
        isExpanded: true,
        onChanged: (DiffusionSampler? value) {
          if (value != null) {
            ref.read(generateSettingsProvider.notifier).setSampler(value);
          }
        },
        items: samplers.entries
            .map<DropdownMenuItem<DiffusionSampler>>(
              (final entry) => DropdownMenuItem<DiffusionSampler>(
                value: entry.key,
                child: Text(entry.value),
              ),
            )
            .toList(),
      ),
    );
  }
}

class GenerateSettingsControls extends ConsumerWidget {
  const GenerateSettingsControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sampler = ref.watch(
      generateSettingsProvider.select((settings) => settings.sampler),
    );

    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GenerateSlider(
            label: "Width",
            description: "The width of the generated image",
            min: 512,
            max: 1024,
            divisions: (512 / 64).ceil(),
            selector: (settings) => settings.width.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setWidth(value.toInt()),
          ),
          GenerateSlider(
            label: "Height",
            description: "The height of the generated image",
            min: 512,
            max: 1024,
            divisions: (512 / 64).ceil(),
            selector: (settings) => settings.height.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setHeight(value.toInt()),
          ),
          GenerateSlider(
            label: "Number of Images",
            description:
                "Generate multiple images from a single prompt. If you provide a seed, it will be used for the first image, and incremented by 1 for each image after that.",
            min: 1,
            max: 16,
            divisions: ((16 - 1) / 1).ceil(),
            selector: (GenerateSettings settings) =>
                settings.numberOfImages.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setNumberOfImages(value.toInt()),
          ),
          GenerateSlider(
            label: "CFG Scale",
            description:
                "CFG Scale adjusts how much the image will be like your prompt. Higher values keep your image closer to your prompt.",
            min: 0,
            max: 20,
            divisions: ((20 - 0) / 0.5).ceil(),
            selector: (GenerateSettings settings) => settings.cfgScale,
            changeHandler: (notifier, value) => notifier.setCfgScale(value),
          ),
          SamplerSelectorDropdown(),
          ...(sampler == DiffusionSampler.SAMPLER_DDIM
              ? [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GenerateSlider(
                      label: "ETA",
                      description: "Increase noise introduced during sampling.",
                      min: 0,
                      max: 1,
                      divisions: ((1 - 0) / 0.05).ceil(),
                      selector: (GenerateSettings settings) => settings.eta,
                      changeHandler: (notifier, value) =>
                          notifier.setETA(value),
                    ),
                  ),
                ]
              : []),
          GenerateSlider(
            label: "Steps",
            description:
                "How many steps to spend generating your image. More steps typically means less noise, but too many can start introducing oddities.",
            min: 5,
            max: 150,
            divisions: ((150 - 5) / 1).ceil(),
            selector: (GenerateSettings settings) => settings.steps.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setSteps(value.toInt()),
          ),
          EngineSelectorDropdown(),
        ],
      ),
    );
  }
}

class GenerateSettingsPanel extends StatelessWidget {
  const GenerateSettingsPanel({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            width: 400,
            child: GenerateSettingsControls(),
          ),
        ],
      );
}
