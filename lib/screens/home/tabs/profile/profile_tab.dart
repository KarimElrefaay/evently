import 'package:evently/constant/app_colors.dart';
import 'package:evently/constant/app_styles.dart' hide AppColors;
import 'package:evently/screens/home/tabs/profile/theme/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../provider/app_language_provider.dart';
import '../../../../provider/app_theme_provider.dart';
import 'language/language_bottom_sheet.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: 300,
        child: LanguageBottomSheet(),
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: 300,
        child: ThemeBottomSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width  = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final languageProvider = context.watch<AppLanguageProvider>();
    final themeProvider = context.watch<AppThemeProvider>();

    // الحصول على الـ localizations مع التعامل مع null
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        toolbarHeight: height * 0.2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              "assets/images/Route_profile.png",
              width: 124,
              height: 124,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Route Academy',
                  style: AppStyles.bold20White,
                ),
                SizedBox(height: 20),
                Text(
                  'Routeacedemy@gmail.com',
                  style: AppStyles.regular16White,
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // اللغة
            Text(
              localizations?.language ?? 'Language',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: height * 0.01),
            Container(
              margin: EdgeInsets.symmetric(vertical: height * 0.02),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.01,
                vertical: height * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primaryLight, width: 2),
              ),
              child: InkWell(
                onTap: () => showLanguageBottomSheet(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      languageProvider.appLanguage == 'en'
                          ? localizations?.english ?? 'English'
                          : localizations?.arabic ?? 'Arabic',
                      style: AppStyles.bold18Primary,
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 35,
                      color: AppColors.primaryLight,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: height * 0.02),

            // الثيم
            Text(
              localizations?.theme ?? 'Theme',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: height * 0.01),
            Container(
              margin: EdgeInsets.symmetric(vertical: height * 0.02),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.01,
                vertical: height * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primaryLight, width: 2),
              ),
              child: InkWell(
                onTap: () => showThemeBottomSheet(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                          () {
                        switch (themeProvider.appTheme) {
                          case ThemeMode.light:
                            return 'Light';
                          case ThemeMode.dark:
                            return 'Dark';
                          case ThemeMode.system:
                          default:
                            return 'System';
                        }
                      }(),
                      style: AppStyles.bold18Primary,
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 35,
                      color: AppColors.primaryLight,
                    ),
                  ],
                ),
              ),
            ),

            Spacer(),

            // زر Logout
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.redColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logout, color: AppColors.whiteColor, size: 40),
                  SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      localizations?.logout ?? 'Logout',
                      style: AppStyles.bold20White,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
