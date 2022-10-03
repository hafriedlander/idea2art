import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
                  painter: SlowButtonPainter(r: r),
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
        _anim.reset();
      },
      child: child,
    );
  }
}
