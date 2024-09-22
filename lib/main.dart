// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

Color greyColor = Color.fromARGB(255, 245, 245, 248);
Color containerColor = Color.fromARGB(255, 240, 240, 240);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(384, 808),
        builder: (context, child) {
          return MaterialApp(
            title: 'BMI Calculator',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.montserratTextTheme(),
              useMaterial3: true,
            ),
            home: HomePage(),
          );
        });
  }
}
