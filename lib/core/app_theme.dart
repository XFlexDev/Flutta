import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0A0A0A),
    primaryColor: const Color(0xFF00F0B5),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF00F0B5),
      surface: Color(0xFF121212),
    ),
  );
}