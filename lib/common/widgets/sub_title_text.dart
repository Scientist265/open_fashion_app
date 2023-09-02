import 'package:flutter/material.dart';
import 'package:open_fashion_with_clean_code/components/constants/colors.dart';
import 'package:open_fashion_with_clean_code/components/constants/styles.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({super.key, required this.text, this.color});
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppTextTheme.ksubHeaderStyle
          .copyWith(color: color ?? AppColors.kBackgroundColor),
    );
  }
}
