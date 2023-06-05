import 'package:flutter/material.dart';

class Loader1 extends StatefulWidget {
  const Loader1({Key? key}) : super(key: key);

  @override
  State<Loader1> createState() => _Loader1State();
}

class _Loader1State extends State<Loader1> {
  double width = 30.0;
  double height = 30.0;
  Alignment alignment = Alignment.centerLeft;
  bool _animating = true;

  // Duration variable
  final Duration _duration = const Duration(milliseconds: 600);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => _animateLoader());
  }

  void _animateLoader() async {
    while (_animating) {
      // expand to the right
      setState(() {
        width = 70.0;
      });
      await Future.delayed(_duration);

      // Then, contract from the left
      setState(() {
        width = 30.0;
        alignment = Alignment.centerRight;
      });
      await Future.delayed(_duration);

      // expand to the left
      setState(() {
        width = 70.0;
      });
      await Future.delayed(_duration);

      // contract from the right
      setState(() {
        width = 30.0;
        alignment = Alignment.centerLeft;
      });

      await Future.delayed(_duration);
    }
  }

  @override
  void dispose() {
    _animating = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 70,
          width: 70,
          child: Align(
            alignment: alignment,
            child: AnimatedContainer(
              duration: _duration,
              width: width,
              height: height,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 10),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
