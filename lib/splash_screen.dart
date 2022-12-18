
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shecare/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    screensp();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:const Color.fromARGB(255, 245, 240, 198),
      body: Container(
        decoration: const BoxDecoration(
        image : DecorationImage(
        image: AssetImage("assets/pinkbg.jpeg"),
        fit: BoxFit.cover,
    ),
    ),
        child: Column(
          children: [
            Expanded(
                child: Container(
                  child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 20, end: 37),
                      duration: Duration(seconds: 3),
                      curve: Curves.decelerate,
                      builder: (BuildContext context, double value, _) {
                        return Center(
                          child: Text(
                            "SheCare",
                            style: TextStyle(
                              letterSpacing:5 ,
                                fontWeight: FontWeight.bold,
                                fontSize: value,
                                color: Colors.white),
                          ),
                        );
                      }),
                )),

          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> screensp() async {
    await Future.delayed(const Duration(seconds: 7));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Login()));

  }
}

class _Triangle1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _Triangle2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}