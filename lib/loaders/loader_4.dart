import 'package:flutter/material.dart';

class Loader4 extends StatefulWidget {
  const Loader4({Key? key}) : super(key: key);

  @override
  State<Loader4> createState() => _Loader4State();
}

class _Loader4State extends State<Loader4> {
  double width1 = 30.0;
  double height1 = 30.0;
  Alignment alignment1 = Alignment.topLeft;

  double width2 = 30.0;
  double height2 = 30.0;
  Alignment alignment2 = Alignment.topRight;

  double width3 = 70.0;
  double height3 = 30.0;
  Alignment alignment3 = Alignment.bottomLeft;

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
      // Add your animation steps here
      for (int i = 0; i < 2; i++) {
        setState(() {
          width3 = 30.0;
          alignment3 = Alignment.bottomLeft;
        });
        await Future.delayed(_duration);

        setState(() {
          height2 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          height2 = 30.0;
          alignment2 = Alignment.bottomRight;
        });
        await Future.delayed(_duration);

        setState(() {
          width1 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          width1 = 30.0;
          alignment1 = Alignment.topRight;
        });
        await Future.delayed(_duration);

        setState(() {
          height3 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          height3 = 30.0;
          alignment3 = Alignment.topLeft;
        });
        await Future.delayed(_duration);

        setState(() {
          width2 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          width2 = 30.0;
          alignment2 = Alignment.bottomLeft;
        });
        await Future.delayed(_duration);

        setState(() {
          height1 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          height1 = 30.0;
          alignment1 = Alignment.bottomRight;
        });
        await Future.delayed(_duration);

        setState(() {
          width3 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          width3 = 30.0;
          alignment3 = Alignment.topRight;
        });
        await Future.delayed(_duration);

        setState(() {
          height2 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          height2 = 30.0;
          alignment2 = Alignment.topLeft;
        });
        await Future.delayed(_duration);

        setState(() {
          width1 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          width1 = 30.0;
          alignment1 = Alignment.bottomLeft;
        });
        await Future.delayed(_duration);

        setState(() {
          height3 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          height3 = 30.0;
          alignment3 = Alignment.bottomRight;
        });
        await Future.delayed(_duration);

        setState(() {
          width2 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          width2 = 30.0;
          alignment2 = Alignment.topRight;
        });
        await Future.delayed(_duration);

        setState(() {
          height1 = 70.0;
        });
        await Future.delayed(_duration);

        setState(() {
          height1 = 30.0;
          alignment1 = Alignment.topLeft;
        });
        await Future.delayed(_duration);

        setState(() {
          width3 = 70.0;
        });
        await Future.delayed(_duration);
      }
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
            SizedBox(
              height: 70,
              width: 70,
              child: Align(
                alignment: alignment3,
                child: AnimatedContainer(
                  duration: _duration,
                  width: width3,
                  height: height3,
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