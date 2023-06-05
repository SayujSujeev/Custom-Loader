import 'package:flutter/material.dart';

class Loader9 extends StatefulWidget {
  const Loader9({Key? key}) : super(key: key);

  @override
  State<Loader9> createState() => _Loader9State();
}

class _Loader9State extends State<Loader9> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: HeartbeatPainter(),
              child: const SizedBox(
                height: 70,
                width: 70,
              ),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (_, __) => ClipRect(
                clipper: ProgressClipper(_controller.value),
                child: CustomPaint(
                  painter: HeartbeatPainter(color: Colors.black),
                  child: const SizedBox(
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ),
          ],
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

class HeartbeatPainter extends CustomPainter {
  final Color color;

  HeartbeatPainter({this.color = Colors.transparent});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final path = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width / 4, size.height / 2)
      ..lineTo(size.width / 3, size.height / 2 - 20)
      ..lineTo(size.width / 2, size.height / 2 + 20)
      ..lineTo(2 * size.width / 3, size.height / 2 - 20)
      ..lineTo(3 * size.width / 4, size.height / 2)
      ..lineTo(size.width, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ProgressClipper extends CustomClipper<Rect> {
  final double progress;

  ProgressClipper(this.progress);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width * progress, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}