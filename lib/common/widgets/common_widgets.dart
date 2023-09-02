import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

svgPicture(String path) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0.w),
    child: SvgPicture.asset(
      path,
    ),
  );
}
