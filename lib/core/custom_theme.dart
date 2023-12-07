import 'package:flutter/material.dart';

class CustomTheme {
  static const primary = Color(0xFF00BA07);
  static const black = Color(0xFF323232);
  static const red = Color(0xFFFE1212);
  static const grey = Color(0xFFA5A5A5);
  static const greyLight = Color(0xFFF7F7F7);
  static const greyDark = Color(0xFF838383);

  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primary,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: black,
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
          titleMedium: TextStyle(
            color: black,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
          bodyLarge: TextStyle(
            color: black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          bodyMedium: TextStyle(
            color: greyDark,
            fontSize: 10,
          ),
        ),
      );
}

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
