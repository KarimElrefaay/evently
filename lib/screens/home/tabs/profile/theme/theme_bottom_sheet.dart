import 'package:evently/provider/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constant/app_styles.dart';
import '../../../../../l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    final themeProvider = context.watch<AppThemeProvider>();
    final currentThemeMode = themeProvider.appTheme;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.02,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              themeProvider.setTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Light',
                  style: currentThemeMode == ThemeMode.light
                      ? AppStyles.bold18Primary
                      : AppStyles.bold16Black,
                ),
                if (currentThemeMode == ThemeMode.light)
                  Icon(Icons.check, color: AppColors.primaryLight, size: 28)
                else
                  SizedBox(width: 28),
              ],
            ),
          ),

          SizedBox(height: height * 0.02),


          InkWell(
            onTap: () {
              themeProvider.setTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark',
                  style: currentThemeMode == ThemeMode.dark
                      ? AppStyles.bold18Primary
                      : AppStyles.bold16Black,
                ),
                if (currentThemeMode == ThemeMode.dark)
                  Icon(Icons.check, color: AppColors.primaryLight, size: 28)
                else
                  SizedBox(width: 28),
              ],
            ),
          ),

          SizedBox(height: height * 0.02),

          InkWell(
            onTap: () {
              themeProvider.setTheme(ThemeMode.system);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'System',
                  style: currentThemeMode == ThemeMode.system
                      ? AppStyles.bold18Primary
                      : AppStyles.bold16Black,
                ),
                if (currentThemeMode == ThemeMode.system)
                  Icon(Icons.check, color: AppColors.primaryLight, size: 28)
                else
                  SizedBox(width: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
