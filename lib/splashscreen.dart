import 'package:flutter/material.dart';
import 'package:final_prakerja/wlc1.dart';

import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  startSplash() async {
    var dur = const Duration(seconds: 4);
    return Timer(dur, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return const Wlc();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Row(
        children: [
          Image.asset(
            "images/splash.png",
            width: 400,
            height: 400,
          )
        ],
      )),
    );
  }
}
