import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruler_picker_bn/ruler_picker_bn.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

int selectedHeight = 160;

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              "HEIGHT",
              style: TextStyle(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: RulerPicker(
                        minValue: 0,
                        maxValue: 225,
                        background: containerColor,
                        onChange: (val) {
                          setState(() {
                            selectedHeight = val;
                          });
                        }),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$selectedHeight",
                          style: TextStyle(
                              fontSize: 28.sp, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "CM",
                          style: TextStyle(fontSize: 14.sp, height: 0.4),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
