import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({super.key});

  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

int weight = 55;

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
          SizedBox(
            height: 50.h,
          ),
          NumberPicker(
            minValue: 0,
            maxValue: 200,
            value: weight,
            axis: Axis.horizontal,
            itemWidth: 50.w,
            haptics: true,
            itemCount: 3,
            step: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black26),
            ),
            zeroPad: false,
            infiniteLoop: true,
            textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
            selectedTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 26.sp),
            onChanged: (int value) {
              setState(() {
                weight = value;
              });
            },
          ),
          Text("KILOGRAMS", style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}
