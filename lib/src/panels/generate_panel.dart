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
        child: Center(child: ImageCanvasWidget()),
        //         child: hasResult
        //           ? const GenerateImages()
        //         : const GenerateImagesPlaceholder()),
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

class DIImage {
  final di.Image image;
  final Rect pos;

  DIImage({
    required this.image,
    required this.pos,
  });

  DIImage.fromBytes({
    required ByteData bytes,
    required pos,
  }) : this(
          image: di.Image.fromBytes(
            pos.width,
            pos.height,
            Uint8List.view(bytes.buffer).toList(),
            // TODO: This seems wrong, the bytes should definitely be in RGBA order. Bug in Flutter or Image?
            format: di.Format.bgra,
          ),
          pos: pos,
        );
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

              final imageCanvas = ref.read(imageCanvasProvider);
              final imageFrame = ref.read(imageCanvasFrameWithSizeProvider);

              var overlaps = <ImageCanvasImageSet>[];

              for (final imageset in imageCanvas.imagesets) {
                if (imageset.pos.overlaps(imageFrame.pos)) {
                  overlaps.add(imageset);
                }
              }

              di.Image? image = null;
              di.Image? mask = null;

              if (overlaps.isNotEmpty) {
                image = di.Image(imageFrame.pos.width.toInt(),
                    imageFrame.pos.height.toInt());
                mask = di.Image(imageFrame.pos.width.toInt(),
                    imageFrame.pos.height.toInt());

                final Iterable<DIImage?> overlapImages = await Future.wait(
                  overlaps.map<Future<DIImage?>>(
                    (imageset) async {
                      ImageCanvasImage? selected = imageset.selectedImage();
                      if (selected == null) return null;

                      final bytes = await selected.image.toByteData(
                        format: ui.ImageByteFormat.rawStraightRgba,
                      );

                      if (bytes != null) {
                        return DIImage.fromBytes(
                          bytes: bytes,
                          pos: imageset.pos,
                        );
                      } else {
                        return null;
                      }
                    },
                  ),
                );

                for (final overlap in overlapImages) {
                  if (overlap == null) continue;

                  di.copyInto(
                    image,
                    overlap.image,
                    dstX: (overlap.pos.left - imageFrame.pos.left).toInt(),
                    dstY: (overlap.pos.top - imageFrame.pos.top).toInt(),
                  );

                  mask = image.clone();

                  // Copy alpha to color, set alpha to full, and invert
                  final maskb = mask.getBytes();
                  for (var i = 0, len = maskb.length; i < len; i += 4) {
                    maskb[i] = maskb[i + 1] = maskb[i + 2] = 255 - maskb[i + 3];
                    maskb[i + 3] = 255;
                  }

                  // Blur mask
                  mask = di.gaussianBlur(mask, 64);

                  // And then adjust so out-of-image area is always white
                  for (var i = 0, len = maskb.length; i < len; i += 4) {
                    maskb[i] =
                        maskb[i + 1] = maskb[i + 2] = min(255, maskb[i] * 2);
                    maskb[i + 3] = 255;
                  }
                }
              }

              final adjustedPrompt = prompt.copyWith(
                imagePng: image != null ? di.encodePng(image) : null,
                maskPng: mask != null ? di.encodePng(mask) : null,
              );

              final adjustedSettings = settings.copyWith(
                engineID: engine.id,
                seed: settings.seed <= 0
                    ? Random().nextInt(4294967295)
                    : settings.seed,
              );

              final s = service.value;
              if (s != null) {
                final stream = s.generateToUIImage(
                  adjustedPrompt,
                  adjustedSettings,
                );

                final set = ImageCanvasImageSet.fromCenterWH(
                  center: imageFrame.pos.center,
                  width: settings.width,
                  height: settings.height,
                  total: settings.numberOfImages,
                  prompt: adjustedPrompt,
                  settings: adjustedSettings,
                  stream: stream,
                );

                ref.read(imageCanvasProvider.notifier).add(set);
                ref.read(imageCanvasProvider.notifier).selectByImageset(set);

                /*
                if (mask != null) {
                  ref.read(imageCanvasProvider.notifier).addUIImageToSet(
                      set,
                      await decodeImageFromList(
                          Uint8List.fromList(di.encodePng(mask))));
                }
                */

                await for (final image in stream) {
                  ref
                      .read(imageCanvasProvider.notifier)
                      .addUIImageToSet(set, image);
                }
              }
            })
          : null,
      child: const Text("Generate"),
    );
  }
}
