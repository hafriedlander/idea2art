import 'dart:math';
import 'dart:ui' as ui;
import 'package:vector_math/vector_math_64.dart' as vm;

import 'package:collection/collection.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/src/models/canvas.dart';
import 'package:idea2art/src/providers.dart';
import 'package:idea2art/src/widgets/slow_button.dart';
import 'package:idea2art/src/utils.dart';

class ImageCanvasImagePainter extends CustomPainter {
  ImageCanvasImagePainter({
    required this.image,
    required this.w,
    required this.h,
  });

  final ImageCanvasImage image;
  final double w;
  final double h;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawImageRect(
        image.image,
        Rect.fromLTWH(
          0,
          0,
          image.image.width.toDouble(),
          image.image.height.toDouble(),
        ),
        Rect.fromLTWH(
          0,
          0,
          w,
          h,
        ),
        Paint());
  }

  @override
  bool shouldRepaint(ImageCanvasImagePainter oldDelegate) =>
      image.key != oldDelegate.image.key;
}

class ImageCanvasImageWidget extends HookConsumerWidget {
  const ImageCanvasImageWidget({
    super.key,
    required this.image,
    this.width = -1,
  });

  final ImageCanvasImage image;
  final int width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = width < 0 ? image.image.width : width;
    final h = width < 0
        ? image.image.height
        : image.image.height / image.image.width * width;

    return SizedBox(
      width: w.toDouble(),
      height: w.toDouble(),
      child: CustomPaint(
        painter: ImageCanvasImagePainter(
            image: image, w: w.toDouble(), h: h.toDouble()),
      ),
    );
  }
}

class ImageCanvasImageSetWidget extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;

  ImageCanvasImageSetWidget({required this.imageset});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ImageCanvasImage? selected = imageset.selectedImage();
    if (selected == null) {
      return Container(
        width: imageset.pos.width,
        height: imageset.pos.height,
        color: Colors.grey.shade700,
      );
    } else {
      return ImageCanvasImageWidget(
        image: selected,
      );
    }
  }
}

class ImageCanvasExpandButton extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;
  const ImageCanvasExpandButton({
    required this.imageset,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final available = ref.watch(generateServiceAvailableProvider);

    return TextButton(
      onPressed: available
          ? () => GenerationExecuter.generateForExistingImageset(ref, imageset)
          : null,
      child: const Icon(Icons.history),
    );
  }
}

class ImageCanvasDeleteButton extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;

  const ImageCanvasDeleteButton({
    required this.imageset,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SlowButton(
      onSlowPress: () {
        ref.read(imageCanvasProvider.notifier).delete(imageset.key);
      },
      child: const Icon(Icons.delete_forever),
    );
  }
}

class ImageCanvasCancelButton extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;
  const ImageCanvasCancelButton({
    required this.imageset,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SlowButton(
      onSlowPress: () {
        ref.read(imageCanvasProvider.notifier).cancel(imageset.key);
      },
      child: const Icon(Icons.cancel),
    );
  }
}

class ImageCanvasImageSetThumbsScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class ImageCanvasImageSetThumbsWidget extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;

  ImageCanvasImageSetThumbsWidget({required this.imageset});

  List<Widget> _thumbs(WidgetRef ref) {
    const h = 64.0;
    final w = h * imageset.pos.width / imageset.pos.height;

    final List<Widget> thumbs = [];

    const spacer = SizedBox(
      width: 10,
      height: h,
    );

    for (final image in imageset.images) {
      thumbs.add(
        InkWell(
          onTap: () {
            ref
                .read(imageCanvasProvider.notifier)
                .selectImageFromSet(imageset.key, image.key);
          },
          child: ImageCanvasImageWidget(image: image, width: w.toInt()),
        ),
      );
      thumbs.add(spacer);
    }

    for (var i = 0; i < imageset.total - imageset.images.length; i++) {
      thumbs.add(Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: w,
          height: h,
          color: Colors.grey.shade700,
          child: i == 0
              ? const Center(
                  child: CircularProgressIndicator(value: null),
                )
              : Container(),
        ),
      ));
      thumbs.add(spacer);
    }

    thumbs.removeLast();
    return thumbs;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 512,
      height: 64,
      color: Colors.grey.shade700.withAlpha(128),
      child: Row(
        children: [
          Expanded(
            child: ScrollConfiguration(
              behavior: ImageCanvasImageSetThumbsScrollBehavior(),
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: _thumbs(ref),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...(imageset.inProgress
                    ? [
                        ImageCanvasCancelButton(imageset: imageset),
                      ]
                    : [
                        ImageCanvasExpandButton(imageset: imageset),
                        ImageCanvasDeleteButton(imageset: imageset),
                      ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCanvasFrameWidget extends ConsumerWidget {
  final ImageCanvasMode mode;
  final double canvasScale;
  final Color borderColor;
  final double borderSize;

  const ImageCanvasFrameWidget({
    super.key,
    this.mode = ImageCanvasMode.create,
    this.canvasScale = 1,
    this.borderColor = Colors.lightGreen,
    this.borderSize = 3.0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double borderSize = this.borderSize / canvasScale;

    final pos = ref.watch(imageCanvasFrameWithSizeProvider).pos;
    final available = ref.watch(generateServiceAvailableProvider);

    var borderColor = {
      ImageCanvasMode.create: Colors.lightGreen,
      ImageCanvasMode.variants: Colors.yellow,
      ImageCanvasMode.fill: Colors.red,
    }[mode]!
        .withAlpha(available ? 255 : 96);

    final label = {
      ImageCanvasMode.create: 'CREATE',
      ImageCanvasMode.variants: 'VARIANTS',
      ImageCanvasMode.fill: 'FILL',
    }[mode]!;

    final icon = {
      ImageCanvasMode.create: Icons.add_circle_outline,
      ImageCanvasMode.variants: Icons.autorenew,
      ImageCanvasMode.fill: Icons.all_out,
    }[mode]!;

    return Positioned(
      left: pos.left - borderSize,
      top: pos.top - borderSize,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 0,
            top: -30,
            child: Row(
              children: [
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: borderColor),
                ),
                Icon(
                  icon,
                  color: borderColor,
                ),
              ],
            ),
          ),
          Container(
            width: pos.width + borderSize * 2,
            height: pos.height + borderSize * 2,
            decoration: BoxDecoration(
              border: Border.all(
                width: borderSize,
                color: borderColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCanvaHitTests {
  final Rect? frame;
  final Iterable<ImageCanvasImageSet> imagesets;

  ImageCanvaHitTests(this.frame, this.imagesets);

  bool frameHittest(Offset pos) {
    return frame?.contains(pos) ?? false;
  }

  ImageCanvasImageSet? imagesetHittest(Offset pos, {int excludeSetKey = -1}) {
    return imagesets.lastWhereOrNull((set) => set.pos.contains(pos));
  }

  Offset snapTest(Rect snapee) {
    const rectDistance = 128.0;
    const snapDistance = 32.0;

    var snapDelta = const Offset(0, 0);

    final List<Rect> rects = [
      ...(frame == null ? [] : [frame!]),
      ...imagesets.map((set) => set.pos),
    ];

    for (var rect in rects.reversed) {
      if (snapee.overlaps(rect.inflate(rectDistance))) {
        final hys = [rect.top, rect.centerLeft.dy, rect.bottom];
        final sys = [snapee.top, snapee.centerLeft.dy, snapee.bottom];

        for (var hy in hys) {
          for (var sy in sys) {
            if ((hy - sy).abs() < snapDistance) {
              snapDelta = Offset(snapDelta.dx, hy - sy);
            }
          }
        }

        final hxs = [rect.left, rect.topCenter.dx, rect.right];
        final sxs = [snapee.left, snapee.topCenter.dx, snapee.right];

        for (var hx in hxs) {
          for (var sx in sxs) {
            if ((hx - sx).abs() < snapDistance) {
              snapDelta = Offset(hx - sx, snapDelta.dy);
            }
          }
        }
      }
    }

    return snapDelta;
  }
}

class ImageCanvasWidget extends HookConsumerWidget {
  const ImageCanvasWidget({super.key});

  List<Widget> _buildImages(ImageCanvas images) {
    return images.imagesets
        .map<Widget>(
          (image) => Positioned(
            left: image.pos.left,
            top: image.pos.top,
            child: ImageCanvasImageSetWidget(imageset: image),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(imageCanvasProvider);
    final frame = ref.watch(imageCanvasFrameWithSizeProvider).pos;
    final frameMode = ref.watch(imageCanvasFrameModeProvider);

    final canvasPos = useState<Offset>(Offset(0, 0));
    final canvasScale = useState<double>(1);

    final panStart = useState<Offset?>(null);
    final hitCanvas = useState<Offset>(const Offset(0, 0));
    final hitFrame = useState<Rect?>(null);
    final hitSet = useState<ImageCanvasImageSet?>(null);

    final ImageCanvasImageSet? selectedImageset = images.selectedImageset();

    Offset gesturePointToCanvas(Offset point, [ValueNotifier<Offset>? canvas]) {
      return (point -
                  Offset(
                    (context.size?.width ?? 0) / 2,
                    (context.size?.height ?? 0) / 2,
                  )) /
              canvasScale.value -
          (canvas ?? canvasPos).value;
    }

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: Colors.grey.withAlpha(32)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Listener(
            behavior: HitTestBehavior.translucent,
            onPointerSignal: (event) {
              if (event is PointerScrollEvent) {
                if (event.scrollDelta.dy < 0) {
                  canvasScale.value = canvasScale.value * 1.2;
                } else if (event.scrollDelta.dy > 0) {
                  canvasScale.value = canvasScale.value / 1.2;
                }
              }
            },
            // This GestureDetector is used for panning, scaling and mask / paint modes
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTapDown: (details) {},
              onTapUp: (details) {
                // If we tapped (without pan), treat it like a select / unselect
                final hitpos = gesturePointToCanvas(details.localPosition);

                final tester = ImageCanvaHitTests(frame, images.imagesets);
                final hitSet = tester.imagesetHittest(hitpos);

                if (hitSet == null) {
                  ref.read(imageCanvasProvider.notifier).unselect();
                } else {
                  ref.read(imageCanvasProvider.notifier).select(hitSet.key);
                }
              },
              onScaleStart: (details) {
                // Remember original position of everything we hit and might pan
                final hitpos = gesturePointToCanvas(details.localFocalPoint);
                final tester = ImageCanvaHitTests(frame, images.imagesets);

                panStart.value = hitpos;
                hitFrame.value = tester.frameHittest(hitpos) ? frame : null;
                hitSet.value = tester.imagesetHittest(hitpos);
                hitCanvas.value = canvasPos.value;

                // If we're going to move the hitSet (instead of hitFrame) select it too
                if (hitFrame.value == null && hitSet.value != null) {
                  ref
                      .read(imageCanvasProvider.notifier)
                      .select(hitSet.value!.key);
                }
              },
              onScaleUpdate: (details) {
                // Since we might be moving the canvas, use the remembered canvas details
                final pos = gesturePointToCanvas(
                  details.localFocalPoint,
                  hitCanvas,
                );

                // We always move the panned item "original position" + "total delta from start"
                final delta = pos - panStart.value!;

                final hitFrameVal = hitFrame.value;
                final hitSetVal = hitSet.value;

                if (hitFrameVal != null) {
                  // Frame always has highest hit priority on pan
                  final tester = ImageCanvaHitTests(null, images.imagesets);

                  var newPos = hitFrameVal.shift(delta);
                  newPos = newPos.shift(tester.snapTest(newPos));

                  ref
                      .read(imageCanvasFrameProvider.notifier)
                      .setCenter(newPos.center);
                } else if (hitSetVal != null) {
                  // Imageset has next highest hit priority
                  final tester = ImageCanvaHitTests(
                    frame,
                    images.imagesets.where((set) => set.key != hitSetVal.key),
                  );

                  var newPos = hitSetVal.pos.shift(delta);
                  newPos = newPos.shift(tester.snapTest(newPos));

                  ref.read(imageCanvasProvider.notifier).setImageSetCenter(
                        hitSetVal.key,
                        newPos.center,
                      );
                } else {
                  // And if we hit nothing, pan the canvas
                  canvasPos.value = hitCanvas.value + delta;
                }
              },
              onScaleEnd: (details) {
                panStart.value = null;
              },
              child: Center(
                child: SizedBox(
                  width: 1,
                  height: 1,
                  child: Transform(
                    filterQuality: panStart.value == null
                        ? FilterQuality.medium
                        : FilterQuality.none,
                    transform: (Matrix4.identity() * canvasScale.value) *
                        Matrix4.translation(
                          vm.Vector3(
                            canvasPos.value.dx,
                            canvasPos.value.dy,
                            0,
                          ),
                        ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ..._buildImages(images),
                        ImageCanvasFrameWidget(
                          mode: frameMode.value ?? ImageCanvasMode.create,
                          canvasScale: canvasScale.value,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          selectedImageset != null
              ? Positioned(
                  bottom: 10,
                  child: ImageCanvasImageSetThumbsWidget(
                    imageset: selectedImageset,
                  ),
                )
              : Container(),
          Positioned(
            bottom: 10,
            right: 10,
            child: TextButton(
              onPressed: images.imagesets.isNotEmpty
                  ? () {
                      GenerationExecuter.downloadImages(ref);
                    }
                  : null,
              child: Icon(Icons.download),
            ),
          ),
        ],
      ),
    );
  }
}
