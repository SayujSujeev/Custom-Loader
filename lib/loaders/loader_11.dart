import 'package:flutter/material.dart';
import 'dart:math';

class Loader11 extends StatefulWidget {
  const Loader11({Key? key}) : super(key: key);

  @override
  State<Loader11> createState() => _Loader11State();
}

class _Loader11State extends State<Loader11> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (_, __) {
              return Transform.rotate(
                angle: _controller.value * 5 * pi,
                child: CustomPaint(
                  painter: InfinityPainter(),
                  child: const SizedBox(
                    width: 70,
                    height: 70,
                  ),
                ),
              );
            }
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


