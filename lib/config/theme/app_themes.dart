import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untukmu/config/theme/colors.dart';
import 'package:untukmu/config/theme/text_styles.dart';
import 'package:untukmu/core/utils/platform_check.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor:
              Colors.transparent, // Set status bar color to transparent
          statusBarBrightness: getCurrentPlatform() == CurrentPlatform.web
              ? Brightness.light
              : getCurrentPlatform() == CurrentPlatform.android
                  ? Brightness.dark
                  : Brightness.light, // Set status bar text color to light
          statusBarIconBrightness: getCurrentPlatform() == CurrentPlatform.web
              ? Brightness.light
              : getCurrentPlatform() == CurrentPlatform.android
                  ? Brightness.dark
                  : Brightness.light, // Set status bar icons color to light
        ),
        titleTextStyle: AppTextStyle.labelMedium(isLightTheme: true).copyWith(
            color: AppColors.titleBlack, fontWeight: FontWeight.normal),
        color: AppColors.background,
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: AppColors.titleBlack,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white, modalBackgroundColor: Colors.white),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryGreenDark1),
      scaffoldBackgroundColor: AppColors.background,
      canvasColor: Colors.white,
      primaryColor: AppColors.titleBlack,
      dialogBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        surface: AppColors.background,
        primary: AppColors.primayGold,
        onSurface: AppColors.titleBlack,
      ),
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              iconColor: WidgetStatePropertyAll(AppColors.titleBlack))),
      hintColor: AppColors.greyBase3,
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: AppColors.greyBase3),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.black;
            } else {
              return Colors.white;
            }
          }),
          checkColor: const WidgetStatePropertyAll(Colors.white)),
      textTheme: TextTheme(
          labelMedium: AppTextStyle.labelMedium(isLightTheme: true),
          labelSmall: AppTextStyle.labelSmall(isLightTheme: true),
          bodySmall:
              AppTextStyle.bodySmall.copyWith(color: AppColors.greyBase4),
          bodyMedium: AppTextStyle.body.copyWith(color: AppColors.titleBlack),
          titleMedium: const TextStyle(color: Colors.red),
          titleSmall: const TextStyle(color: Colors.red)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyle.body.copyWith(color: AppColors.titleGrey),
      ),
      dividerColor: AppColors.background,
      cardTheme: const CardTheme(color: Colors.white));

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor:
              Colors.transparent, // Set status bar color to transparent
          statusBarBrightness: getCurrentPlatform() == CurrentPlatform.web
              ? Brightness.light
              : getCurrentPlatform() == CurrentPlatform.android
                  ? Brightness.light
                  : Brightness.dark, // Set status bar text color to light
          statusBarIconBrightness: getCurrentPlatform() == CurrentPlatform.web
              ? Brightness.light
              : getCurrentPlatform() == CurrentPlatform.android
                  ? Brightness.light
                  : Brightness.dark, // Set status bar icons color to light
        ),
        titleTextStyle: AppTextStyle.labelMedium(isLightTheme: false)
            .copyWith(color: Colors.white, fontWeight: FontWeight.normal),
        color: AppColors.backgroundBlack,
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryGreenDark1),
      canvasColor: Colors.black,
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.dark(
        // background: AppColors.background,
        primary: AppColors.primayGold, // <-- SEE HERE
        // secondary: AppColors.titleGrey,
        // onPrimary: AppColors.greyBase4, // <-- SEE HERE
        onSurface: Colors.white, // <-- SEE HERE
      ),
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(iconColor: WidgetStatePropertyAll(Colors.white))),
      hintColor: AppColors.greyBase3,
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: AppColors.greyBase3),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primayGold;
            } else {
              return Colors.white;
            }
          }),
          checkColor: const WidgetStatePropertyAll(Colors.white)),
      textTheme: TextTheme(
        labelMedium: AppTextStyle.labelMedium(isLightTheme: false)
            .copyWith(color: Colors.white),
        labelSmall: AppTextStyle.labelSmall(isLightTheme: false)
            .copyWith(color: Colors.white),
        bodySmall: AppTextStyle.bodySmall.copyWith(color: AppColors.greyBase4),
        bodyMedium: AppTextStyle.body.copyWith(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyle.body.copyWith(color: AppColors.titleGrey),
      ),
      dividerColor: AppColors.background,
      cardTheme: const CardTheme(color: Colors.white));
}
