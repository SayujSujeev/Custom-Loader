import 'package:flutter/material.dart';
import 'dart:math';

class Loader12 extends StatefulWidget {
  const Loader12({Key? key}) : super(key: key);

  @override
  State<Loader12> createState() => _Loader12State();
}

class _Loader12State extends State<Loader12> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 1)).then((_) => _controller.reset()).then((_) => _controller.forward());
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, __) => Transform.rotate(
            angle: _controller.value * 21 * pi / 4,
            child: CustomPaint(
              painter: CirclesPainter(),
              child: const SizedBox(
                width: 50,
                height: 50,
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

class CirclesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    List<Offset> points = [
      const Offset(10, 10),
      Offset(size.width - 10, 10),
      Offset(10, size.height - 10),
      Offset(size.width - 10, size.height - 10),
    ];

    for (var point in points) {
      canvas.drawCircle(point, 5, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


