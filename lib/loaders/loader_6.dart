import 'package:flutter/material.dart';
import 'dart:math';


class Loader6 extends StatefulWidget {
  const Loader6({Key? key}) : super(key: key);

  @override
  State<Loader6> createState() => _Loader6State();
}

class _Loader6State extends State<Loader6> with TickerProviderStateMixin {
  final double radius = 100;
  late final AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animations = List.generate(12, (index) {
      return Tween<double>(begin: radius, end: 0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index % 2 == 0 ? 0.5 : 0,
            1,
            curve: Curves.easeInOut,
          ),
        ),
      )..addListener(() {
        setState(() {});
      });
    });

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: List.generate(12, (index) {
            return Transform.translate(
              offset: Offset.fromDirection(
                (index * (pi / 6)).toDouble(),
                _animations[index].value,
              ),
              child: Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}


