import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/constants/colors.dart';
import '../widgets/sub_title_text.dart';

GestureDetector button({required onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 30.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                    color: AppColors.klabelColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: const SubTitleText(text: "Explore Collection"),
              ),
            ),
          ),
  );
}
