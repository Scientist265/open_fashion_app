import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_fashion_with_clean_code/components/constants/colors.dart';

class AppTextTheme {
  static TextStyle kHeaderStyle = GoogleFonts.bodoniModa(
    color: AppColors.klabelColor,
    fontSize: 38.66,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kPrimaryStyle = GoogleFonts.tenorSans(
    color: AppColors.kTittleActive,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle ksubHeaderStyle = GoogleFonts.tenorSans(
    color: AppColors.kTittleActive,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  
}
