import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({super.key});

  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

int selectedWeight = 55;

class _WeightWidgetState extends State<WeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 14.h,
          ),
          const Text(
            "WEIGHT",
            style: TextStyle(fontSize: 16),
          ),
          NumberPicker(
            minValue: 0,
            maxValue: 199,
            value: selectedWeight,
            axis: Axis.vertical,
            itemWidth: 50.w,
            haptics: true,
            itemCount: 3,
            step: 1,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: primaryColor),
            ),
            zeroPad: false,
            infiniteLoop: true,
            textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
            selectedTextStyle: GoogleFonts.montserratAlternates(
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                color: primaryColor),
            onChanged: (int value) {
              setState(() {
                selectedWeight = value;
              });
            },
          ),
          Text(
            "KILOGRAMS",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
