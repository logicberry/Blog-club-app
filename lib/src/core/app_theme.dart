import 'package:blog_club_app/src/core/core.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'Avenir',
      fontSize: 24,
      letterSpacing: 0,
      height: 32 / 24,
      color: AppColors.darkBlue,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Avenir',
      fontSize: 18,
      letterSpacing: 0,
      height: 0,
      color: AppColors.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Muli-ExtraBold',
      fontSize: 20,
      letterSpacing: 0,
      height: 22 / 20,
      color: AppColors.darkBlue,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Avenir',
      fontSize: 16,
      letterSpacing: 0,
      height: 1.0,
      color: AppColors.darkBlue,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Avenir',
      fontSize: 14,
      letterSpacing: 0,
      height: 22 / 14,
      color: AppColors.darkBlue,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Avenir',
      fontSize: 12,
      letterSpacing: 1.75,
      height: 18 / 12,
      color: AppColors.darkBlue,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Avenir',
      fontSize: 10,
      letterSpacing: 0.12,
      height: 1.0,
      color: AppColors.labelColor,
    ),
  );

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: textTheme,
    primaryTextTheme: textTheme,
    primaryIconTheme: const IconThemeData(
      color: AppColors.white,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.darkBlue),
  );
}
