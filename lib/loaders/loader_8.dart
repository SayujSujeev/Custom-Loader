import 'dart:math' as math;
import 'package:flutter/material.dart';

class Loader8 extends StatefulWidget {
  const Loader8({Key? key}) : super(key: key);

  @override
  State<Loader8> createState() => _Loader8State();
}

class _Loader8State extends State<Loader8> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, __) => CustomPaint(
            painter: WavePainter(_controller.value),
            child: const SizedBox(
              height: 5,
              width: 70,
            ),
          ),
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

class WavePainter extends CustomPainter {
  final double progress;

  WavePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    final path = Path()
      ..moveTo(0, size.height / 2)
      ..quadraticBezierTo(
        size.width / 4,
        size.height / 2 + 20.0 * (math.sin(2 * math.pi * progress) + 1) / 2,
        size.width / 2,
        size.height / 2,
      )
      ..quadraticBezierTo(
        size.width * 3 / 4,
        size.height / 2 - 20.0 * (math.sin(2 * math.pi * progress) + 1) / 2,
        size.width,
        size.height / 2,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}