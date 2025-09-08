import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    print('AppThemeProvider.changeTheme called with: $newTheme');
    if (appTheme == newTheme) {
      print('AppThemeProvider: same theme, return');
      return;
    }
    appTheme = newTheme;
    notifyListeners();
    print('AppThemeProvider: theme changed to $appTheme');
  }

  void setTheme(ThemeMode dark) {
    print('AppThemeProvider.setTheme called with: $dark');
    changeTheme(dark);
  }
}
