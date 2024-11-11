import 'dart:math' as math;

import 'package:flutter/material.dart';

Color get randomColor => Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

class AppColors {
  static const Color n10 = Color(0xFFF8F8F8);
  static const Color n20 = Color(0xFFEAEAEA);
  static const Color n30 = Color(0xFFDFDEDE);
  static const Color n40 = Color(0xFFC8C8C8);
  static const Color n50 = Color(0xFFAAAAAA);
  static const Color n60 = Color(0xFF848484);
  static const Color n70 = Color(0xFF666666);
  static const Color n80 = Color(0xFF3D3D3D);
  static const Color n90 = Color(0xFF212121);
  static const Color n100 = Color(0xFF000000);

  static const Color s05 = Color(0xFFF6F9FF);
  static const Color s10 = Color(0xFFEDF2FF);
  static const Color s20 = Color(0xFFEAEAEA);
  static const Color s30 = Color(0xFFC6D6FF);
  static const Color s40 = Color(0xFF487AFF);
  static const Color s50 = Color(0xFF416EE6);
  static const Color s60 = Color(0xFF3A62CC);
  static const Color s70 = Color(0xFF365CBF);
  static const Color s80 = Color(0xFF2B4999);
  static const Color s90 = Color(0xFF203773);
  static const Color s100 = Color(0xFF192B59);

  static const Color y05 = Color(0xFFFFFCF8);
  static const Color y10 = Color(0xFFFFF3DD);
  static const Color y20 = Color(0xFFFFDC99);
  static const Color y30 = Color(0xFFFFCB66);
  static const Color y40 = Color(0xFFFFBA33);
  static const Color y50 = Color(0xFFFFA800);
  static const Color y60 = Color(0xFFCC8700);
  static const Color y70 = Color(0xFF996500);
  static const Color y80 = Color(0xFF664300);
  static const Color y90 = Color(0xFF332200);

  static const Color error = Color(0xFFFF3257);
  static const Color gray = Color(0xFFFAFAFC);
  static const Color mGray = Color(0xFFF9F9F9);
  static const Color orange = Color(0xFFFFA800);
  static const Color blue = Color(0xFF487AFF);
  static const Color white = Color(0xFFFFFFFF);

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
      displayLarge: TextStyle(color: AppColors.n80),
      displayMedium: TextStyle(color: AppColors.n80),
      displaySmall: TextStyle(color: AppColors.n80),
      headlineLarge: TextStyle(color: AppColors.n80),
      headlineMedium: TextStyle(color: AppColors.n80),
      headlineSmall: TextStyle(color: AppColors.n80),
      titleLarge: TextStyle(color: AppColors.n80),
      titleMedium: TextStyle(color: AppColors.n80),
      titleSmall: TextStyle(color: AppColors.n80),
      bodyLarge: TextStyle(color: AppColors.n80),
      bodyMedium: TextStyle(color: AppColors.n80),
      bodySmall: TextStyle(color: AppColors.n80),
      labelLarge: TextStyle(color: AppColors.n80),
      labelMedium: TextStyle(color: AppColors.n80),
      labelSmall: TextStyle(color: AppColors.n80),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      iconTheme: IconThemeData(color: AppColors.n80),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.surfaceMixed400),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary600,
      secondary: AppColors.primary400,
      surface: AppColors.surface300,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),
  );
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.y50,
    scaffoldBackgroundColor: AppColors.white,
    cardColor: AppColors.white,
    dividerColor: AppColors.n30,
    canvasColor: AppColors.white,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.n40),
      displayMedium: TextStyle(color: AppColors.n40),
      displaySmall: TextStyle(color: AppColors.n40),
      headlineLarge: TextStyle(color: AppColors.n40),
      headlineMedium: TextStyle(color: AppColors.n40),
      headlineSmall: TextStyle(color: AppColors.n40),
      titleLarge: TextStyle(color: AppColors.n40),
      titleMedium: TextStyle(color: AppColors.n40),
      titleSmall: TextStyle(color: AppColors.n40),
      bodyLarge: TextStyle(color: AppColors.n40),
      bodyMedium: TextStyle(color: AppColors.n40),
      bodySmall: TextStyle(color: AppColors.n40),
      labelLarge: TextStyle(color: AppColors.n40),
      labelMedium: TextStyle(color: AppColors.n40),
      labelSmall: TextStyle(color: AppColors.n40),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.n80,
      unselectedItemColor: AppColors.n40,
      selectedIconTheme: IconThemeData(color: AppColors.n80),
      unselectedIconTheme: IconThemeData(color: AppColors.n40),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      iconTheme: IconThemeData(color: AppColors.n80),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(color: AppColors.n40),
        disabledBackgroundColor: AppColors.gray,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide.none),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.white,
        textStyle: const TextStyle(color: AppColors.n40),
        disabledBackgroundColor: AppColors.gray,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, side: BorderSide(width: 0, color: AppColors.n40)),
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.n80,
      secondary: AppColors.n80,
      surface: AppColors.white,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.white,
    ),
  );
}
