import 'dart:async';

import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    starttime();
  }

  starttime() async {
    var duration = Duration(milliseconds: 4700);
    return Timer(duration, nextScreen);
  }

  nextScreen() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage()),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "lib/assets/splashAnimation.json",
          repeat: false,
          height: 100.h,
          width: 100.w,
        ),
      ),
    );
  }
}
