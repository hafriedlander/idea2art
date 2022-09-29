import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/src/providers.dart';

class GenerateImages extends ConsumerWidget {
  const GenerateImages({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(resultImagesProvider);

    return Wrap(
        children: result.images.map((image) => Image(image: image)).toList());
  }
}

class GenerateImagePlaceholder extends ConsumerWidget {
  const GenerateImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratio = ref.watch(generateSettingsProvider.select(
      (settings) => settings.width.toDouble() / settings.height.toDouble(),
    ));

    return Container(
      padding: EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: ratio,
        child: Container(
          color: const Color(0xFF808080),
          width: 400,
          height: 400 / ratio,
        ),
      ),
    );
  }
}

class GenerateImagesPlaceholder extends ConsumerWidget {
  const GenerateImagesPlaceholder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfImages = ref.watch(
        generateSettingsProvider.select((settings) => settings.numberOfImages));

    return Wrap(
        children:
            List.generate(numberOfImages, (i) => GenerateImagePlaceholder()));
  }
}

class GeneratePromptField extends HookConsumerWidget {
  const GeneratePromptField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useTextEditingController(text: "An image");

    final prompt = ref.watch(generatePromptProvider);

    return TextField(
      controller: _controller,
      onChanged: (String value) {
        ref.read(generatePromptProvider.notifier).setPrompt(value);
      },
    );
  }
}

class GeneratePrimaryPanel extends ConsumerWidget {
  const GeneratePrimaryPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasResult = ref.watch(
        resultImagesProvider.select((result) => result.images.isNotEmpty));

    return Column(children: [
      Expanded(
        child: Center(
            child: hasResult
                ? const GenerateImages()
                : const GenerateImagesPlaceholder()),
      ),
      SizedBox(
        width: 400,
        child: Row(children: const [
          Expanded(child: GeneratePromptField()),
          GenerateButton(),
        ]),
      ),
    ]);
  }
}

class GenerateButton extends ConsumerWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prompt = ref.watch(generatePromptProvider);
    final settings = ref.watch(generateSettingsProvider);
    final engine = ref.watch(generateSettingsEngineProvider);
    final service = ref.watch(generateServiceProvider);

    final enabled =
        service.hasValue && prompt.prompt.isNotEmpty && engine != null;

    debugPrint("${prompt.prompt} ${service.hasValue.toString()}");

    return TextButton(
      onPressed: enabled
          ? (() async {
              debugPrint('Generating $prompt');
              ref.read(resultImagesProvider.notifier).clear();

              final s = service.value;
              if (s != null) {
                await for (final image in s.generate(
                  prompt,
                  settings.copyWith(engineID: engine.id),
                )) {
                  ref.read(resultImagesProvider.notifier).add(image);
                }
              }
            })
          : null,
      child: const Text("Generate"),
    );
  }
}
