import 'package:evently/provider/app_language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constant/app_styles.dart' hide AppColors;
import '../../../../../constant/app_colors.dart';
import '../../../../../l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<AppLanguageProvider>(context);

    final currentLang = languageProvider.currentLanguage ??
        (languageProvider.appLocale?.languageCode ?? 'en');

    final localizations = AppLocalizations.of(context);

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
              languageProvider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations?.english ?? 'English',
                  style: currentLang == 'en'
                      ? AppStyles.bold18Primary
                      : AppStyles.bold16Black,
                ),
                if (currentLang == 'en')
                  Icon(Icons.check, color: AppColors.primaryLight, size: 35),
              ],
            ),
          ),

          SizedBox(height: height * 0.02),

          InkWell(
            onTap: () {
              languageProvider.changeLanguage('ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations?.arabic ?? 'Arabic',
                  style: currentLang == 'ar'
                      ? AppStyles.bold18Primary
                      : AppStyles.bold16Black,
                ),
                if (currentLang == 'ar')
                  Icon(Icons.check, color: AppColors.primaryLight, size: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
