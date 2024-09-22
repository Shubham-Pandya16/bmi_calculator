// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/widgets/ageWidget.dart';
import 'package:bmi_calculator/widgets/genderWidget.dart';
import 'package:bmi_calculator/widgets/heightWidget.dart';
import 'package:bmi_calculator/widgets/weightWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyColor,
        appBar: AppBar(
          backgroundColor: greyColor,
          toolbarHeight: 50,
          surfaceTintColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            '\nBMI Calculator',
            style: GoogleFonts.montserratAlternates(
                fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              children: [
                SizedBox(height: 12.h),
                Expanded(flex: 3, child: GenderWidget()),
                SizedBox(height: 8.h),
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: HeightWidget()),
                      // Center Division
                      SizedBox(width: 8.h),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Expanded(flex: 2, child: AgeWidget()),
                              // Center Division
                              SizedBox(height: 9.h),
                              Expanded(flex: 3, child: WeightWidget()),
                            ],
                          )),
                    ],
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            ),
          ),
        ));
  }
}
