import 'package:flutter/material.dart';
import 'dart:math';


class Loader7 extends StatefulWidget {
  const Loader7({Key? key}) : super(key: key);

  @override
  State<Loader7> createState() => _Loader7State();
}

class _Loader7State extends State<Loader7> with SingleTickerProviderStateMixin {
  final double radius = 100;
  late final AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),  // adjust duration based on your needs
      vsync: this,
    );

    _animations = List.generate(12, (index) {
      return Tween<double>(begin: radius, end: 0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index % 2 == 0 ? 0.5 : 0,  // start animation later for alternate items
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
                (index * (pi / 3)).toDouble(),
                _animations[index].value,  // use individual animations
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

