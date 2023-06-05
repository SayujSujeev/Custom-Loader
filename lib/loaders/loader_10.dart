import 'package:flutter/material.dart';
import 'dart:math';

class Loader10 extends StatefulWidget {
  const Loader10({Key? key}) : super(key: key);

  @override
  State<Loader10> createState() => _Loader10State();
}

class _Loader10State extends State<Loader10> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    _animation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 4 * pi)
            .chain(CurveTween(curve: const Interval(0.0, 0.66))),
        weight: 66,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 4 * pi, end: 6 * pi)
            .chain(CurveTween(curve: const Interval(0.66, 1.0))),
        weight: 33,
      ),
    ]).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (_, __) {
            return Transform(
              transform: Matrix4.rotationX(_animation.value),
              alignment: Alignment.center,
              child: CustomPaint(
                painter: InfinityPainter(),
                child: const SizedBox(
                  width: 70,
                  height: 70,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class InfinityPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    var path = Path();

    var firstCircleCenter = Offset(size.width / 4, size.height / 2);
    var secondCircleCenter = Offset(3 * size.width / 4, size.height / 2);

    path.addArc(Rect.fromCircle(center: firstCircleCenter, radius: size.width / 4), 0, 2 * pi);
    path.addArc(Rect.fromCircle(center: secondCircleCenter, radius: size.width / 4), 0, 2 * pi);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}



