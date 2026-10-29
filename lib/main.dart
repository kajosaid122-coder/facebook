import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MetaApp());
}

class MetaApp extends StatelessWidget {
  const MetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meta App',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.scaffoldLight,
      ),
      home: const SplashScreen(),
    );
  }
}
