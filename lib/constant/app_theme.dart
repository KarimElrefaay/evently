import 'package:flutter/material.dart';

import 'app_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteBgColor,
    textTheme: TextTheme(
      headlineLarge: AppStyles.bold24Black,
      // headlineMedium: AppStyles.bold18Primary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.blackBgColor,



    ),
  );


  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackBgColor,
    textTheme: TextTheme(
    headlineLarge: AppStyles.bold20White,
  ),
  );
}