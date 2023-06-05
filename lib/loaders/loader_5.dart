import 'package:flutter/material.dart';
import 'dart:math';


class Loader5 extends StatefulWidget {
  const Loader5({Key? key}) : super(key: key);

  @override
  State<Loader5> createState() => _Loader5State();
}

class _Loader5State extends State<Loader5> with SingleTickerProviderStateMixin {
  final double radius = 100;
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: radius, end: 0).animate(_controller)
      ..addListener(() {
        setState(() {});
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
                _animation.value,
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

