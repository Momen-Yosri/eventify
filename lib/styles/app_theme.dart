import 'package:eventify/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.secondaryDarkColor,
    primaryColorDark: AppColors.primaryDarkColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryDarkColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.secondaryDarkColor),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryLightColor,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryDarkColor,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackColor,
    primaryColor: AppColors.primaryDarkColor,
    primaryColorDark: AppColors.secondaryDarkColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondaryDarkColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.primaryDarkColor),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryDarkColor,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryLightColor,
      ),
    ),
  );
}
