import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dart:ui' as ui;
import 'package:image/image.dart' as di;

import 'package:idea2art/src/models/canvas.dart';
import 'package:idea2art/src/providers.dart';
import 'package:idea2art/src/widgets/image_canvas.dart';
import 'package:idea2art/src/utils.dart';

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
      keyboardType: TextInputType.multiline,
      minLines: 3,
      maxLines: 5,
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

    final controls = ref.watch(imageCanvasControlsProvider);

    return Column(children: [
      Expanded(
        child: Center(child: ImageCanvasWidget()),
      ),
      SizedBox(
        width: 512,
        child: Row(
            children: controls.isGenerationMode()
                ? [
                    Expanded(child: GeneratePromptField()),
                    GenerateButton(),
                  ]
                : []),
      ),
    ]);
  }
}

class GenerateButton extends ConsumerWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controls = ref.watch(imageCanvasControlsWithModeProvider);
    final available = ref.watch(generateServiceAvailableProvider);

    final label = {
      ImageCanvasMode.create: 'CREATE',
      ImageCanvasMode.variants: 'VARIANTS',
      ImageCanvasMode.fill: 'FILL',
    }[controls.valueOrNull?.mode ?? ImageCanvasMode.create]!;

    return ElevatedButton(
      onPressed: available
          ? () {
              GenerationExecuter.generateForNewImageset(ref);
            }
          : null,
      child: Text(label),
    );
  }
}
