import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF1877F2); // أزرق
  static const Color secondaryColor = Color(0xFF42B72A); // أخضر
  static const Color greyColor = Colors.grey;
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;

  static var whiteBgColor;

  static var blackBgColor;

  static var primaryDark;

  static var primaryLight;
}

class AppStyles {
  // 🔹 Regular
  static TextStyle regular12Black = _style(12, FontWeight.normal, AppColors.blackColor);
  static TextStyle regular14Black = _style(14, FontWeight.normal, AppColors.blackColor);
  static TextStyle regular16Black = _style(16, FontWeight.normal, AppColors.blackColor);
  static TextStyle regular18Black = _style(18, FontWeight.normal, AppColors.blackColor);
  static TextStyle regular20Black = _style(20, FontWeight.normal, AppColors.blackColor);
  static TextStyle regular24Black = _style(24, FontWeight.normal, AppColors.blackColor);

  static TextStyle regular14Grey = _style(14, FontWeight.normal, AppColors.greyColor);
  static TextStyle regular16White = _style(16, FontWeight.normal, AppColors.whiteColor);

  // 🔹 SemiBold
  static TextStyle semiBold14Black = _style(14, FontWeight.w600, AppColors.blackColor);
  static TextStyle semiBold16Black = _style(16, FontWeight.w600, AppColors.blackColor);
  static TextStyle semiBold18Primary = _style(18, FontWeight.w600, AppColors.primaryColor);
  static TextStyle semiBold20White = _style(20, FontWeight.w600, AppColors.whiteColor);

  // 🔹 Bold
  static TextStyle bold14Black = _style(14, FontWeight.bold, AppColors.blackColor);
  static TextStyle bold16Black = _style(16, FontWeight.bold, AppColors.blackColor);
  static TextStyle bold18Primary = _style(18, FontWeight.bold, AppColors.primaryColor);
  static TextStyle bold20White = _style(20, FontWeight.bold, AppColors.whiteColor);
  static TextStyle bold24Black = _style(24, FontWeight.bold, AppColors.blackColor);

  static var whiteBgColor;
  static var blackBgColor;

  // 🔧 ميثود خاصة عشان ما نكررش الكود
  static TextStyle _style(double size, FontWeight weight, Color color) {
    return GoogleFonts.roboto(
      fontSize: size,
      fontWeight: weight,
      color: color,
    );
  }
}
