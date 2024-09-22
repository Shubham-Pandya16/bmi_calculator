// ignore_for_file: file_names

import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/widgets/genderWidget.dart';
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
          title: const Text(
            '\nBMI Calculator',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 16.sp,
              ),
              Expanded(flex: 3, child:  GenderWidget()),
              Expanded(flex: 3, child: Container()),
              Expanded(flex: 3, child: Container()),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ));
  }
}
