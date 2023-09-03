import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizing {
 
  Widget heightSpacer(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget widthSpacer(double width) {
    return SizedBox(
      height: width,
    );
  }

  static double kWidth = 375.w;
  static double kHeight = 825.h;
  static double kRadius = 12.h;
}
