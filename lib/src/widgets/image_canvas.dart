import 'dart:math';
import 'package:collection/collection.dart';
import 'package:idea2art/src/utils.dart';
import 'package:vector_math/vector_math_64.dart' as vm;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/canvas.dart';
import 'package:idea2art/src/models/generate.dart';
import 'package:idea2art/src/providers.dart';

import 'dart:ui' as ui;
import 'package:image/image.dart' as di;

class ImageCanvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(ImageCanvasPainter delegate) {
    return true;
  }
}

class MaskImage {
  MaskImage({required int ir, required int or}) {
    final image = di.Image.rgb(or * 2, or * 2);

    double alphad = 1.0 / (or - ir);

    for (var x = 0; x < or; x++) {
      for (var y = 0; y < or; y++) {
        var d = sqrt(x * x + y * y);
        var a = (d - ir).toDouble() / (or - ir).toDouble();

        for (var dx in [-x, x]) {
          for (var dy in [-y, y]) {
            image.setPixelRgba(or + dx, or + dy, 0, 0, 0, (a * 255).toInt());
          }
        }
      }
    }

    ui.decodeImageFromPixels(
        image.getBytes(), image.width, image.height, ui.PixelFormat.rgba8888,
        (image) {
      this.image = image;
    });
  }

  late final ui.Image image;
}

class ComposedImage {
  Image image;
  int x;
  int y;

  ComposedImage({required this.image, this.x = 0, this.y = 0});
}

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
  ImageCanvasImageWidget({required this.image, this.width = -1});

  final ImageCanvasImage image;
  final int width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = width < 0 ? image.image.width : width;
    final h = width < 0
        ? image.image.height
        : image.image.height / image.image.width * width;

    return Container(
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
    return TextButton(
      onPressed: () {
        GenerationExecuter.generateForExistingImageset(ref, imageset);
      },
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

class SlowButtonPainter extends CustomPainter {
  final double r;

  SlowButtonPainter({required this.r});

  @override
  void paint(Canvas canvas, Size size) {
    final circlePaint = Paint();
    circlePaint.strokeWidth = 4;
    circlePaint.color = Colors.lightGreen;
    circlePaint.style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(r / 2, r / 2), r * 2, circlePaint);
  }

  @override
  bool shouldRepaint(SlowButtonPainter oldDelegate) {
    return r != oldDelegate.r;
  }
}

class SlowButton extends HookWidget {
  final Widget child;
  final Duration duration;
  final void Function() onSlowPress;

  SlowButton({
    required this.child,
    this.duration = const Duration(seconds: 1),
    required this.onSlowPress,
    super.key,
  });

  final GlobalKey _widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final _anim = useAnimationController(duration: duration);
    useAnimation(_anim);

    return GestureDetector(
      key: _widgetKey,
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        OverlayState? overlayState = Overlay.of(context);
        OverlayEntry overlayEntry;
        overlayEntry = OverlayEntry(builder: (context) {
          final renderBox =
              _widgetKey.currentContext?.findRenderObject() as RenderBox?;

          if (renderBox == null) return Container();

          Offset offset = renderBox.localToGlobal(Offset.zero);

          final r = 8 + 18 * (1 - _anim.value);
          final dx = offset.dx + renderBox.size.width / 2 - r / 2;
          final dy = offset.dy + renderBox.size.width / 2 - r / 2;

          return Stack(children: [
            Positioned(
              top: dy,
              left: dx,
              child: Container(
                width: r * 2,
                height: r * 2,
                child: CustomPaint(
                  painter: SlowButtonPainter(
                    r: r,
                  ),
                ),
              ),
            ),
            Positioned(top: offset.dy, left: offset.dx, child: child)
          ]);
        });

        _anim.addListener(() {
          overlayState!.setState(() {});
        });

        // inserting overlay entry
        overlayState!.insert(overlayEntry);

        _anim.forward(from: 0)
          ..whenComplete(() => onSlowPress())
          ..whenCompleteOrCancel(() => overlayEntry.remove());
      },
      onTapUp: (_) {
        debugPrint("U");
        _anim.reset();
      },
      child: child,
    );
  }
}

class ImageCanvasCancelButton extends HookConsumerWidget {
  final ImageCanvasImageSet imageset;
  const ImageCanvasCancelButton({required this.imageset, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SlowButton(
      duration: Duration(seconds: 2),
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
  final double canvasScale;
  final Color borderColor;
  final double borderSize;

  const ImageCanvasFrameWidget({
    super.key,
    this.canvasScale = 1,
    this.borderColor = Colors.lightGreen,
    this.borderSize = 3.0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double borderSize = this.borderSize / canvasScale;

    final pos = ref.watch(imageCanvasFrameWithSizeProvider).pos;

    return Positioned(
      left: pos.left - borderSize,
      top: pos.top - borderSize,
      child: Container(
        width: pos.width + borderSize * 2,
        height: pos.height + borderSize * 2,
        decoration: BoxDecoration(
          border: Border.all(
            width: borderSize,
            color: borderColor,
          ),
        ),
      ),
    );
  }
}

enum HittableType { frame, image, thumbnail }

class Hittable {
  final HittableType type;
  final Rect rect;

  Hittable({required this.type, required this.rect});
}

class HittableImage extends Hittable {
  final int imagesetkey;

  HittableImage({
    required this.imagesetkey,
    required super.rect,
    required super.type,
  });

  HittableImage.fromImageset({
    required ImageCanvasImageSet imageset,
  }) : this(
          imagesetkey: imageset.key,
          type: HittableType.image,
          rect: imageset.pos,
        );
}

class ImageCanvasWidget extends HookConsumerWidget {
  const ImageCanvasWidget({this.selected = false, super.key});

  final bool selected;

  List<Hittable> _hittables(
    Rect frame,
    ImageCanvas canvasImage, {
    bool excludeFrame = false,
    ImageCanvasImageSet? excludeImageSet,
  }) {
    return [
      ...(excludeFrame
          ? []
          : [Hittable(rect: frame, type: HittableType.frame)]),
      ...canvasImage.imagesets
          .where((imageset) =>
              excludeImageSet == null || imageset.key != excludeImageSet.key)
          .map<Hittable>(
            (imageset) => HittableImage.fromImageset(imageset: imageset),
          ),
    ];
  }

  Hittable? _hitTest(Rect frame, ImageCanvas canvasImage, Offset pos) {
    List<Hittable> hittables = _hittables(frame, canvasImage);

    return hittables.firstWhereOrNull(
      (hittable) => hittable.rect.contains(pos),
    );
  }

  Offset _snapTest(Rect snapee, List<Hittable> hittables) {
    const snapDistance = 32.0;

    var snapDelta = const Offset(0, 0);

    for (var hittable in hittables.reversed) {
      if (snapee.overlaps(hittable.rect.inflate(snapDistance))) {
        final hys = [
          hittable.rect.top,
          hittable.rect.centerLeft.dy,
          hittable.rect.bottom,
        ];
        final sys = [snapee.top, snapee.bottom];

        for (var hy in hys) {
          for (var sy in sys) {
            if ((hy - sy).abs() < snapDistance) {
              snapDelta = Offset(snapDelta.dx, hy - sy);
            }
          }
        }

        final hxs = [
          hittable.rect.left,
          hittable.rect.topCenter.dx,
          hittable.rect.right,
        ];
        final sxs = [snapee.left, snapee.right];

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

    final canvasPos = useState<Offset>(Offset(0, 0));
    final canvasScale = useState<double>(1);

    final frameSelected = useState<bool>(false);

    final panStart = useState<Offset>(const Offset(0, 0));
    final hitStart = useState<Offset>(const Offset(0, 0));

    final ImageCanvasImageSet? selectedImageset = images.selectedImageset();

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
              onScaleStart: (details) {
                panStart.value = (details.localFocalPoint -
                        Offset(
                          (context.size?.width ?? 0) / 2,
                          (context.size?.height ?? 0) / 2,
                        )) /
                    canvasScale.value;

                final hit = _hitTest(
                  frame,
                  images,
                  panStart.value - canvasPos.value,
                );

                if (hit == null) {
                  frameSelected.value = false;
                  ref.read(imageCanvasProvider.notifier).unselect();
                  hitStart.value = canvasPos.value;
                } else {
                  hitStart.value = hit.rect.center;
                  frameSelected.value = (hit.type == HittableType.frame);

                  if (hit is HittableImage) {
                    ref
                        .read(imageCanvasProvider.notifier)
                        .select(hit.imagesetkey);
                  } else {
                    ref.read(imageCanvasProvider.notifier).unselect();
                  }
                }
              },
              onScaleUpdate: (details) {
                final pos = (details.localFocalPoint -
                        Offset(
                          (context.size?.width ?? 0) / 2,
                          (context.size?.height ?? 0) / 2,
                        )) /
                    canvasScale.value;

                final delta = pos - panStart.value;

                if (selectedImageset != null) {
                  var newPos = Rect.fromCenter(
                    center: hitStart.value + delta,
                    width: selectedImageset.pos.width,
                    height: selectedImageset.pos.height,
                  );

                  newPos = newPos.shift(_snapTest(
                      newPos,
                      _hittables(frame, images,
                          excludeImageSet: selectedImageset)));

                  ref.read(imageCanvasProvider.notifier).setImageSetCenter(
                        selectedImageset.key,
                        newPos.center,
                      );
                } else if (frameSelected.value) {
                  var newPos = Rect.fromCenter(
                    center: hitStart.value + delta,
                    width: frame.width,
                    height: frame.height,
                  );

                  newPos = newPos.shift(_snapTest(
                      newPos, _hittables(frame, images, excludeFrame: true)));

                  ref
                      .read(imageCanvasFrameProvider.notifier)
                      .setCenter(newPos.center);
                } else {
                  canvasPos.value = hitStart.value + delta;
                }
              },
              onScaleEnd: (details) {
                debugPrint("End");
              },
              child: Center(
                child: SizedBox(
                  width: 1,
                  height: 1,
                  child: Transform(
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
