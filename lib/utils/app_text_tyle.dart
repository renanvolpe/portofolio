import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTextStyle {
  // Asap Titles
  static final TextStyle titleLg = GoogleFonts.asap(
    fontSize: 56,
    height: 1.2, // 120%
    fontWeight: FontWeight.bold,
    color: AppColors.gray100,
  );

  static final TextStyle titleMd = GoogleFonts.asap(
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.bold,
    color: AppColors.gray100,
  );

  static final TextStyle titleSm = GoogleFonts.asap(
    fontSize: 16,
    height: 1.2,
    fontWeight: FontWeight.bold,
    color: AppColors.gray100,
  );

  // Inconsolata Subtitle
  static final TextStyle subtitle = GoogleFonts.inconsolata(
    fontSize: 20,
    height: 1.2,
    fontWeight: FontWeight.w400,
    color: AppColors.gray200,
  );

  // Maven Pro Text
  static final TextStyle textMd = GoogleFonts.mavenPro(
    fontSize: 16,
    height: 1.4, // 140%
    fontWeight: FontWeight.w400,
    color: AppColors.gray300,
  );

  static final TextStyle textSm = GoogleFonts.mavenPro(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w400,
    color: AppColors.gray300,
  );
}
