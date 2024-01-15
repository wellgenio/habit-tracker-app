import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: const Color.fromARGB(255, 44, 44, 44),
    tertiary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
  textTheme: const TextTheme(
    labelSmall: TextStyle(),
    labelMedium: TextStyle(),
    labelLarge: TextStyle(),
    bodySmall: TextStyle(),
    bodyMedium: TextStyle(),
    bodyLarge: TextStyle(),
  ).apply(
    bodyColor: Colors.grey.shade200,
    displayColor: Colors.grey.shade200,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: Colors.grey.shade800,
    foregroundColor: Colors.white,
  ),
  iconTheme: IconThemeData(
    color: Colors.grey.shade200,
  ),
);
