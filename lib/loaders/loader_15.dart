import 'package:flutter/material.dart';
import 'dart:math';

class Loader15 extends StatefulWidget {
  const Loader15({Key? key}) : super(key: key);

  @override
  State<Loader15> createState() => _Loader15State();
}

class _Loader15State extends State<Loader15> with TickerProviderStateMixin {
  late List<AnimationController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      5,
          (index) => AnimationController(
        duration: Duration(seconds: 1 + index),
        vsync: this,
      )..repeat(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: List.generate(
            _controllers.length,
                (index) => AnimatedBuilder(
              animation: _controllers[index],
              builder: (_, __) => Transform.rotate(
                angle: _controllers[index].value * 2 * pi,
                child: CustomPaint(
                  painter: SemiCirclePainter(radius: 10.0 * (index + 1)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}

class SemiCirclePainter extends CustomPainter {
  final double radius;

  SemiCirclePainter({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCircle(center: center, radius: radius);

    canvas.drawArc(rect, 0, pi, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
