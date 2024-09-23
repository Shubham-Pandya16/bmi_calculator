import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({super.key});

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

int age = 18;

class _AgeWidgetState extends State<AgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: Column(
        children: [
          SizedBox(
            height: 14.sp,
          ),
          const Text(
            "AGE",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        age--;
                      });
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(Icons.remove,
                          size: 20, color: primaryColor),
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$age",
                          style: GoogleFonts.montserratAlternates (
                              fontSize: 34.sp,
                              fontWeight: FontWeight.w700,
                              color: primaryColor),
                      ),
                      const Text(
                        "YEARS",
                        style: TextStyle(height: 0.02),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        age++;
                      });
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(Icons.add,
                          size: 20, color: Colors.grey.shade800),
                    ),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
