import 'package:flutter/material.dart';
import 'dart:math';

class Loader14 extends StatefulWidget {
  const Loader14({Key? key}) : super(key: key);

  @override
  State<Loader14> createState() => _Loader14State();
}

class _Loader14State extends State<Loader14> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, __) => Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: Transform.scale(
              scale: _controller.value,
              child: CustomPaint(
                painter: LinesPainter(),
                child: const SizedBox(
                  width: 150,
                  height: 150,
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
    _controller.dispose();
    super.dispose();
  }
}

class LinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    int numberOfLines = 16;
    for (int i = 0; i < numberOfLines; i++) {
      final startAngle = 2 * pi / numberOfLines * i;
      final startPoint = Offset(size.width / 2 * (1 + cos(startAngle)), size.height / 2 * (1 + sin(startAngle)));
      final endPoint = Offset(size.width / 2 * (1 - cos(startAngle)), size.height / 2 * (1 - sin(startAngle)));
      canvas.drawLine(startPoint, endPoint, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}



