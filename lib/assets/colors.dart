import 'package:flutter/material.dart';

class AppColors {
  static const Color primary100 = Color(0xFF382BF0);
  static const Color primary200 = Color(0xFF5E43F3);
  static const Color primary300 = Color(0xFF7A5AF5);
  static const Color primary400 = Color(0xFF9171F8);
  static const Color primary500 = Color(0xFFA688FA);
  static const Color primary600 = Color(0xFFBA9FFB);

  static const Color surface100 = Color(0xFF121212);
  static const Color surface200 = Color(0xFF282828);
  static const Color surface300 = Color(0xFF3F3F3F);
  static const Color surface400 = Color(0xFF575757);
  static const Color surface500 = Color(0xFF717171);
  static const Color surface600 = Color(0xFF8B8B8B);

  static const Color surfaceMixed100 = Color(0xFF1A1625);
  static const Color surfaceMixed200 = Color(0xFF2F2B3A);
  static const Color surfaceMixed300 = Color(0xFF46424F);
  static const Color surfaceMixed400 = Color(0xFF5E5A66);
  static const Color surfaceMixed500 = Color(0xFF76737E);
  static const Color surfaceMixed600 = Color(0xFF908D96);
}

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary600,
    scaffoldBackgroundColor: AppColors.surface100,
    cardColor: AppColors.surface200,
    dividerColor: AppColors.surface400,
    canvasColor: AppColors.surface500,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.primary600),
      bodyMedium: TextStyle(color: AppColors.primary500),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.surfaceMixed100,
      iconTheme: IconThemeData(color: AppColors.primary600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.surfaceMixed400),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary600,
      secondary: AppColors.primary400,
      surface: AppColors.surface300,
      background: AppColors.surface200,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onBackground: Colors.white,
    ),
  );
}
