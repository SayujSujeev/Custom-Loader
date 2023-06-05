import 'package:flutter/material.dart';

class Loader3 extends StatefulWidget {
  const Loader3({Key? key}) : super(key: key);

  @override
  State<Loader3> createState() => _Loader3State();
}

class _Loader3State extends State<Loader3> {
  double width1 = 30.0;
  double height1 = 30.0;
  Alignment alignment1 = Alignment.topLeft;

  double width2 = 30.0;
  double height2 = 30.0;
  Alignment alignment2 = Alignment.bottomRight;

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
        width1 = 70.0;
        width2 = 70.0;
      });
      await Future.delayed(_duration);

      // Then, contract from the left
      setState(() {
        width1 = 30.0;
        alignment1 = Alignment.topRight;
        width2 = 30.0;
        alignment2 = Alignment.bottomLeft;
      });
      await Future.delayed(_duration);

      // Expand down
      setState(() {
        height1 = 70.0;
        height2 = 70.0;
      });
      await Future.delayed(_duration);

      // Finally, contract upwards
      setState(() {
        height1 = 30.0;
        alignment1 = Alignment.bottomRight;
        height2 = 30.0;
        alignment2 = Alignment.topLeft;
      });

      await Future.delayed(_duration);

      // First, expand to the left
      setState(() {
        width1 = 70.0;
        width2 = 70.0;
      });

      await Future.delayed(_duration);

      // Then, contract from the left
      setState(() {
        width1 = 30.0;
        alignment1 = Alignment.bottomLeft;
        width2 = 30.0;
        alignment2 = Alignment.topRight;
      });

      await Future.delayed(_duration);

      // Expand top
      setState(() {
        height1 = 70.0;
        height2 = 70.0;
      });

      await Future.delayed(_duration);

      // Finally, contract upwards
      setState(() {
        height1 = 30.0;
        alignment1 = Alignment.topLeft;
        height2 = 30.0;
        alignment2 = Alignment.bottomRight;
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
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
              width: 70,
              child: Align(
                alignment: alignment1,
                child: AnimatedContainer(
                  duration: _duration,
                  width: width1,
                  height: height1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 10),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: Align(
                alignment: alignment2,
                child: AnimatedContainer(
                  duration: _duration,
                  width: width2,
                  height: height2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 10),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
