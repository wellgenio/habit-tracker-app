import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  textTheme: const TextTheme(
    labelSmall: TextStyle(),
    labelMedium: TextStyle(),
    labelLarge: TextStyle(),
    bodySmall: TextStyle(),
    bodyMedium: TextStyle(),
    bodyLarge: TextStyle(),
  ).apply(
    bodyColor: Colors.grey.shade800,
    displayColor: Colors.grey.shade800,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
  iconTheme: IconThemeData(
    color: Colors.grey.shade800,
  ),
);
