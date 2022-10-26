import 'dart:math';
import 'dart:ui' as ui;
import 'package:idea2art/src/constants.dart';
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
    this.extraMask = const ImageCanvasMaskStroke(),
    required this.w,
    required this.h,
  });

  final ImageCanvasImage image;
  final ImageCanvasMaskStroke extraMask;
  final double w;
  final double h;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = w / image.image.width.toDouble();
    canvas.saveLayer(null, Paint());
    canvas.scale(scale);
    image.drawToCanvas(canvas, extraMask: extraMask);
    canvas.restore();
  }

  @override
  bool shouldRepaint(ImageCanvasImagePainter oldDelegate) =>
      image != oldDelegate.image || extraMask != oldDelegate.extraMask;
}

class ImageCanvasImageWidget extends HookConsumerWidget {
  const ImageCanvasImageWidget({
    super.key,
    required this.image,
    this.extraMask = const ImageCanvasMaskStroke(),
    this.width = -1,
  });

  final ImageCanvasImage image;
  final int width;
  final ImageCanvasMaskStroke extraMask;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = width < 0 ? image.image.width : width;
    final h = width < 0
        ? image.image.height
        : image.image.height / image.image.width * width;

    return SizedBox(
      width: w.toDouble(),
      height: h.toDouble(),
      child: ClipRect(
        child: CustomPaint(
          painter: ImageCanvasImagePainter(
              image: image,
              extraMask: extraMask,
              w: w.toDouble(),
              h: h.toDouble()),
        ),
      ),
    );
  }
}

class ImageCanvasImageSetWidget extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;
  final ImageCanvasMaskStroke extraMask;

  ImageCanvasImageSetWidget({
    required this.imageset,
    this.extraMask = const ImageCanvasMaskStroke(),
  });

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
      return ImageCanvasImageWidget(image: selected, extraMask: extraMask);
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
      child: const Icon(Idea2artIcons.generate_more),
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
      child: const Icon(Idea2artIcons.delete),
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
      child: const Icon(Idea2artIcons.cancel),
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
        GestureDetector(
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

    final label = {
      ImageCanvasMode.auto: 'AUTO',
      ImageCanvasMode.create: 'CREATE',
      ImageCanvasMode.variants: 'VARIANTS',
      ImageCanvasMode.fill: 'FILL',
    }[mode];

    if (label == null) return Container();

    var borderColor = {
      ImageCanvasMode.auto: Colors.grey,
      ImageCanvasMode.create: Colors.lightGreen,
      ImageCanvasMode.variants: Colors.yellow,
      ImageCanvasMode.fill: Colors.red,
    }[mode]!
        .withAlpha(available ? 255 : 96);

    final icon = {
      ImageCanvasMode.auto: Idea2artIcons.auto,
      ImageCanvasMode.create: Idea2artIcons.create,
      ImageCanvasMode.variants: Idea2artIcons.variants,
      ImageCanvasMode.fill: Idea2artIcons.fill,
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

  Iterable<ImageCanvasImageSet> imagesetsHittest(
    Offset pos, {
    int excludeSetKey = -1,
  }) {
    return imagesets.where((set) => set.pos.contains(pos));
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

class ImageCanvasToolButton extends StatelessWidget {
  final IconData icon;
  final Function() callback;
  final bool selected;

  const ImageCanvasToolButton({
    super.key,
    required this.icon,
    required this.callback,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final bg = selected ? Colors.lightGreen : Colors.white;
    final color = selected ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        width: 48,
        height: 48,
        decoration: ShapeDecoration(
          color: bg,
          shape: CircleBorder(side: BorderSide(color: bg)),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            callback();
          },
          child: Icon(
            icon,
            color: color,
            size: 32,
          ),
        ),
      ),
    );
  }
}

class ImageCanvasCommandsWidget extends HookConsumerWidget {
  const ImageCanvasCommandsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expanded = useState<bool>(false);

    if (expanded.value) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center, children: []);
    } else {
      return ImageCanvasToolButton(
        callback: () => expanded.value = true,
        icon: Idea2artIcons.command_menu,
        selected: true,
      );
    }
  }
}

class ImageCanvasToolWidget extends HookConsumerWidget {
  const ImageCanvasToolWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expanded = useState<bool>(false);
    final controls = ref.watch(imageCanvasControlsProvider);

    const icons = {
      ImageCanvasMode.auto: Idea2artIcons.auto,
      ImageCanvasMode.create: Idea2artIcons.create,
      ImageCanvasMode.variants: Idea2artIcons.variants,
      ImageCanvasMode.fill: Idea2artIcons.fill,
      ImageCanvasMode.mask: Idea2artIcons.mask,
    };

    final icon = icons[controls.mode]!;

    if (expanded.value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: ImageCanvasMode.values
            .map<Widget>(
              (val) => ImageCanvasToolButton(
                callback: () {
                  expanded.value = false;
                  ref.read(imageCanvasControlsProvider.notifier).setMode(val);
                },
                icon: icons[val]!,
                selected: false,
              ),
            )
            .toList(),
      );
    } else if (controls.mode == ImageCanvasMode.mask) {
      return Row(
        children: [
          SizedBox(
            width: 200,
            height: 32,
            child: Slider(
              value: controls.maskRadius,
              max: 32,
              onChanged: (val) => ref
                  .read(imageCanvasControlsProvider.notifier)
                  .setMaskRadius(val),
            ),
          ),
          ImageCanvasToolButton(
            callback: () => expanded.value = true,
            icon: Idea2artIcons.mask,
            selected: true,
          )
        ],
      );
    } else {
      return ImageCanvasToolButton(
        callback: () => expanded.value = true,
        icon: icons[controls.mode]!,
        selected: true,
      );
    }
  }
}

class GenerationGestureHandler extends HookConsumerWidget {
  final Widget child;
  final Offset canvasPos;
  final double canvasScale;
  final void Function(Offset) canvasPanCallback;

  const GenerationGestureHandler({
    super.key,
    required this.child,
    required this.canvasPos,
    required this.canvasScale,
    required this.canvasPanCallback,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(imageCanvasProvider);
    final frame = ref.watch(imageCanvasFrameWithSizeProvider).pos;

    final panStart = useState<Offset?>(null);
    final hitCanvas = useState<Offset>(const Offset(0, 0));
    final hitFrame = useState<Rect?>(null);
    final hitSet = useState<ImageCanvasImageSet?>(null);

    Offset gesturePointToCanvas(Offset point, [Offset? canvas]) {
      return (point -
                  Offset(
                    (context.size?.width ?? 0) / 2,
                    (context.size?.height ?? 0) / 2,
                  )) /
              canvasScale -
          (canvas ?? canvasPos);
    }

    return GestureDetector(
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
        hitCanvas.value = canvasPos;

        // If we're going to move the hitSet (instead of hitFrame) select it too
        if (hitFrame.value == null && hitSet.value != null) {
          ref.read(imageCanvasProvider.notifier).select(hitSet.value!.key);
        }
      },
      onScaleUpdate: (details) {
        // Since we might be moving the canvas, use the remembered canvas details
        final pos = gesturePointToCanvas(
          details.localFocalPoint,
          hitCanvas.value,
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

          ref.read(imageCanvasFrameProvider.notifier).setCenter(newPos.center);
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
          canvasPanCallback(hitCanvas.value + delta);
        }
      },
      onScaleEnd: (details) {
        panStart.value = null;
      },
      child: child,
    );
  }
}

class PaintGestureHandler extends HookConsumerWidget {
  final Widget child;
  final Offset canvasPos;
  final double canvasScale;

  const PaintGestureHandler({
    super.key,
    required this.child,
    required this.canvasPos,
    required this.canvasScale,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(imageCanvasProvider);
    final controls = ref.watch(imageCanvasControlsProvider);

    Offset gesturePointToCanvas(Offset point, [Offset? canvas]) {
      return (point -
                  Offset(
                    (context.size?.width ?? 0) / 2,
                    (context.size?.height ?? 0) / 2,
                  )) /
              canvasScale -
          (canvas ?? canvasPos);
    }

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onPanStart: (details) {
        // Remember original position of everything we hit and might pan
        final hitpos = gesturePointToCanvas(details.localPosition);
        ref.read(imageCanvasProvider.notifier).setBuildingMask(
              ImageCanvasMaskStroke(
                r: controls.maskRadius,
                points: <Offset>[hitpos],
              ),
            );
      },
      onPanUpdate: (details) {
        final hitpos = gesturePointToCanvas(details.localPosition);
        ref.read(imageCanvasProvider.notifier).addPointToBuildingMask(hitpos);
      },
      onPanEnd: (details) {
        // TODO: Find and attach mask stroke only to images it hit
        ref.read(imageCanvasProvider.notifier)
          ..addMaskToAll(images.buildingMask)
          ..setBuildingMask(const ImageCanvasMaskStroke());
      },
      child: child,
    );
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
            child: ImageCanvasImageSetWidget(
              imageset: image,
              extraMask: images.buildingMask.copyWith(
                  points: images.buildingMask.points
                      .map((pos) => pos - image.pos.topLeft)),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(imageCanvasProvider);
    final controls = ref.watch(imageCanvasControlsWithModeProvider);

    final mode = controls.value?.mode ?? ImageCanvasMode.auto;
    final isGenerationMode = controls.value?.isGenerationMode() ?? true;

    final canvasPos = useState<Offset>(Offset(0, 0));
    final canvasScale = useState<double>(1);

    final ImageCanvasImageSet? selectedImageset = images.selectedImageset();

    final canvasWidget = Center(
      child: SizedBox(
        width: 1,
        height: 1,
        child: Transform(
          filterQuality: FilterQuality.medium,
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
              ...(isGenerationMode
                  ? [
                      ImageCanvasFrameWidget(
                        mode: mode,
                        canvasScale: canvasScale.value,
                      )
                    ]
                  : []),
            ],
          ),
        ),
      ),
    );

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
                canvasScale.value = max(
                    0.1, min(2.0, canvasScale.value - event.scrollDelta.dy * 0.001)
                );
              }
            },
            // This GestureDetector is used for panning, scaling and mask / paint modes
            child: isGenerationMode
                ? GenerationGestureHandler(
                    canvasPos: canvasPos.value,
                    canvasScale: canvasScale.value,
                    canvasPanCallback: (pos) => canvasPos.value = pos,
                    child: canvasWidget,
                  )
                : PaintGestureHandler(
                    child: canvasWidget,
                    canvasPos: canvasPos.value,
                    canvasScale: canvasScale.value,
                  ),
          ),
          selectedImageset != null
              ? Positioned(
                  bottom: 10,
                  child: ImageCanvasImageSetThumbsWidget(
                    imageset: selectedImageset,
                  ),
                )
              : Container(height: 0, width: 0),
          const Positioned(
            top: 10,
            left: 10,
            child: ImageCanvasCommandsWidget(),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: ImageCanvasToolWidget(),
          ),
        ],
      ),
    );
  }
}
