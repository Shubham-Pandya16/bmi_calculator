import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

Color textColor = Color.fromARGB(255, 32, 32, 32);

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiValue,
      required this.bmiCategory,
      required this.bmiExplanation});

  final double bmiValue;
  final String bmiCategory;
  final String bmiExplanation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: greyColor,
        toolbarHeight: 50,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          '\nBMI Calculator',
          style: GoogleFonts.montserratAlternates(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 16.h,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text('Body Mass Index'.toUpperCase(),
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor.withOpacity(0.8),
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                padding: EdgeInsets.all(25.sp),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 250, 250),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text('Your Results',
                        style: GoogleFonts.montserratAlternates(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: textColor)),
                    SizedBox(
                      height: 30.h,
                    ),
                    SleekCircularSlider(
                      appearance: CircularSliderAppearance(
                          size: 200, customColors: CustomSliderColors()),
                      min: 0,
                      max: 50,
                      initialValue: bmiValue,
                      innerWidget: (val) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              val.toStringAsFixed(1),
                              style: GoogleFonts.montserratAlternates(
                                  fontSize: 34.sp,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                            ),
                          ],
                        );
                      },
                    ),
                    Text(
                      bmiCategory.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: textColor.withOpacity(0.9)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      bmiExplanation,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                flex: 3,
                child: ClipRRect(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    splashColor: Colors.red,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        "Go Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          letterSpacing: 1.2,
                        ),
                      )),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
