import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/constants/colors.dart';
import '../widgets/sub_title_text.dart';

GestureDetector button({required onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 40.h,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          decoration: BoxDecoration(
              color: AppColors.klabelColor,
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: const SubTitleText(text: "Explore Collection"),
        ),
      ),
    ),
  );
}
