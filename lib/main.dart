import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'lib/bottom_navigation_bar.dart';

// استيراد الـ Providers
import 'provider/app_language_provider.dart';
import 'provider/app_theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppLanguageProvider()),
        ChangeNotifierProvider(create: (_) => AppThemeProvider()), // 🟢 أضفت الـ Theme Provider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Evently",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavExample(),
    );
  }
}
