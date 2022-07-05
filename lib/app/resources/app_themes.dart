import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.accent1,
      onSecondary: AppColors.onAccent1,
      error: AppColors.error,
      onError: AppColors.onError,
      background: AppColors.background1,
      onBackground: AppColors.onBackground1,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface1,
    ),
    appBarTheme: const AppBarTheme(color: AppColors.primary),
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background1,
      brightness: Brightness.dark,
    ),
    backgroundColor: AppColors.background1,
    scaffoldBackgroundColor: AppColors.background1,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.accent1,
      selectionColor: AppColors.accent1,
      selectionHandleColor: AppColors.accent1,
    ),
    indicatorColor: AppColors.accent1,
    textTheme: const TextTheme(
      subtitle1: TextStyle(
          color: AppColors.inputText,
          fontSize: 15,
          fontWeight: FontWeight.w400),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
          color: AppColors.inputHint,
          fontSize: 15,
          fontWeight: FontWeight.w400),
    ),
  );
}
