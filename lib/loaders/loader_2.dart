import 'package:flutter/material.dart';

class Loader2 extends StatefulWidget {
  const Loader2({Key? key}) : super(key: key);

  @override
  State<Loader2> createState() => _Loader2State();
}

class _Loader2State extends State<Loader2> {
  double width = 30.0;
  double height = 30.0;
  Alignment alignment = Alignment.topLeft;
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
      // First, expand to the right
      setState(() {
        width = 70.0;
      });
      await Future.delayed(_duration);

      // Then, contract from the left
      setState(() {
        width = 30.0;
        alignment = Alignment.topRight;
      });
      await Future.delayed(_duration);

      // Expand down
      setState(() {
        height = 70.0;
      });
      await Future.delayed(_duration);

      // Finally, contract upwards
      setState(() {
        height = 30.0;
        alignment = Alignment.bottomRight;
      });

      await Future.delayed(_duration);
      // First, expand to the left
      setState(() {
        width = 70.0;
      });

      await Future.delayed(_duration);

      // Then, contract from the left
      setState(() {
        width = 30.0;
        alignment = Alignment.bottomLeft;
      });

      await Future.delayed(_duration);

      // Expand top
      setState(() {
        height = 70.0;
      });

      await Future.delayed(_duration);

      // Finally, contract upwards
      setState(() {
        height = 30.0;
        alignment = Alignment.topLeft;
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

