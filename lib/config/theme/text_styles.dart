import 'package:flutter/material.dart';
import 'package:untukmu/config/theme/colors.dart';
// import 'package:/google_fonts.dart';

import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle onboardTitle = GoogleFonts.plusJakartaSans(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.neutralGrey60);

  static TextStyle caption = GoogleFonts.plusJakartaSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.neutralGrey80);

  static TextStyle caption2 = GoogleFonts.plusJakartaSans(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColors.neutralGrey40);

  static TextStyle button = GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: AppColors.primaryGreenDark1);

  static TextStyle buttonMenu = GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: AppColors.primaryGreenDark1);

  static TextStyle bannerText = GoogleFonts.plusJakartaSans(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyLarge =
      GoogleFonts.plusJakartaSans(fontSize: 17, fontWeight: FontWeight.w700);
  static TextStyle body = GoogleFonts.plusJakartaSans(
      fontSize: 14, height: 1.4, fontWeight: FontWeight.w400);
  static TextStyle bodySmall = GoogleFonts.plusJakartaSans(
      fontSize: 12, height: 1.4, fontWeight: FontWeight.w400);
  static TextStyle bodySmall2 =
      GoogleFonts.plusJakartaSans(fontSize: 11, height: 1.2);

  static TextStyle buttonSmall = GoogleFonts.plusJakartaSans(
      fontSize: 12, height: 1.4, fontWeight: FontWeight.w700);

  static TextStyle buttonMedium = GoogleFonts.plusJakartaSans(
      fontSize: 19, height: 1.4, fontWeight: FontWeight.w600);

  static TextStyle subText = GoogleFonts.plusJakartaSans(
    fontSize: 11,
  );
  static TextStyle displayText = GoogleFonts.plusJakartaSans(
    fontSize: 14,
  );

  static TextStyle labelMedium({bool? isLightTheme}) {
    Color color;
    if (isLightTheme == null) {
      color = AppColors.instance.getTitleColor();
    } else {
      if (isLightTheme) {
        color = AppColors.titleBlack;
      } else {
        color = Colors.white;
      }
    }
    return GoogleFonts.plusJakartaSans(
        fontSize: 17, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle labelSmall({bool? isLightTheme}) {
    Color color;
    if (isLightTheme == null) {
      color = AppColors.instance.getTitleColor();
    } else {
      if (isLightTheme) {
        color = AppColors.titleBlack;
      } else {
        color = Colors.white;
      }
    }
    return GoogleFonts.plusJakartaSans(
        fontSize: 14, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle titleList =
      GoogleFonts.plusJakartaSans(fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle basicFont = GoogleFonts.plusJakartaSans();

  //theming
  static TextStyle heading1 = GoogleFonts.plusJakartaSans(
      fontSize: 16, height: 1.1, letterSpacing: -0.02);
  static TextStyle heading2 = GoogleFonts.plusJakartaSans(
      fontSize: 16, height: 1.1, letterSpacing: -0.02);
  static TextStyle heading3 = GoogleFonts.plusJakartaSans(
      fontSize: 16, height: 1.1, letterSpacing: -0.02);
  static TextStyle heading4 = GoogleFonts.plusJakartaSans(
      fontSize: 16, height: 1.1, letterSpacing: -0.02);
  static TextStyle heading5 = GoogleFonts.plusJakartaSans(
      fontSize: 16, height: 1.1, letterSpacing: -0.02);
  static TextStyle heading6 = GoogleFonts.plusJakartaSans(
      fontSize: 16, height: 1.1, letterSpacing: -0.02);
  static TextStyle display1 = GoogleFonts.plusJakartaSans(
      fontSize: 34, height: 1.2, letterSpacing: -0.03);
  static TextStyle display2 = GoogleFonts.plusJakartaSans(
      fontSize: 28, height: 1.2, letterSpacing: -0.02);

  static TextStyle basicMedium = GoogleFonts.plusJakartaSans(
      fontSize: 16,
      height: 1.1,
      letterSpacing: -0.02,
      fontWeight: FontWeight.w500);
}
