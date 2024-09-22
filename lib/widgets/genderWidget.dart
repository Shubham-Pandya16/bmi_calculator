import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

var selectedGender= "";

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp),
      child: Row(
        children: [
          // MALEselectedGenderBUTTON
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
               selectedGender= "Male";
              });
            },
            child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color:selectedGender== 'Male' ? Colors.blue : greyColor,
                      width: 1.5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    Icon(
                      Icons.male_sharp,
                      color:selectedGender== "Male" ? Colors.blueAccent : greyColor,
                      size: 75.sp,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Male",
                      style: GoogleFonts.montserrat(
                          fontSize: 15.sp,
                          color:
                             selectedGender== "Male" ? Colors.blue : greyColor, fontWeight: FontWeight.w700),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                  ],
                )),
          )), 
          
          // Center Division
          SizedBox(width: 8.w,), 
          
          // FEMALEselectedGenderBUTTON
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
               selectedGender= "Female";
              });
            },
            child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color:selectedGender== 'Female' ? Colors.pink : greyColor,
                      width: 1.5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    Icon(
                      Icons.female_sharp,
                      color:selectedGender== "Female" ? Colors.pinkAccent : greyColor,
                      size: 75.sp,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Female",
                      style: GoogleFonts.montserrat(
                          fontSize: 15.sp,
                          color:
                             selectedGender== "Female" ? Colors.pinkAccent : greyColor, fontWeight: FontWeight.w700),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}
