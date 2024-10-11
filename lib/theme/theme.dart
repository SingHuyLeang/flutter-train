import 'package:flutter/material.dart';
import 'package:flutter_train/constants/font_family.dart';
import 'package:flutter_train/theme/color.dart';

class AppTheme {
  final darkMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: ThemeColor.primary,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24.0,
        color: ThemeColor.light,
        fontFamily: FontFamily.bold,
      ),
    ),
  );
  final lightMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: ThemeColor.primary,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24.0,
        color: ThemeColor.dark,
        fontFamily: FontFamily.bold,
      ),
    ),
  );
}
