import 'dart:math' as math;

import 'package:flutter/material.dart';

const WHITE = Color(0xFFFFFFFF);
const BOTTOM_SHEET_BG = Color(0xFFF8F8F8);
const BUTTON_BORDER = Color(0xFFDFDEDE);

const PRIMARY_50 = Color(0xFFF8F5FF);
const PRIMARY_100 = Color(0xFFF4EFFF);
const PRIMARY_200 = Color(0xFFDCCCFF);
const PRIMARY_500 = Color(0xFF8E5BFE);

const CANCEL_LABEL_BG = Color(0xFFFFF0F0);
const APPLY_LABEL_BG = Color(0xFFEEF7FF);
const WAIT_LABEL_BG = Color(0xFFFFF5E1);

const ERROR = Color(0xFFFF3B30);
const WARNING = Color(0xFFFFBC35);
const INFORMATION = Color(0xFF387DFF);
////////

const BLACK = Color(0xFF000000);
const RED = Color(0xFFEB5757);
const GRAY = Color(0xFFFAFAFC);
const MOBILE_GRAY = Color(0xFFF2F3F7);
const TRANSPARENT = Color(0x00000000);

const KAKAO = Color(0xFFFFEB00);

const NATURAL_N20 = Color(0xFFEAEAEA);
const NATURAL_N30 = Color(0xFFDFDEDE);
const NATURAL_N40 = Color(0xFFC8C8C8);
const NATURAL_N50 = Color(0xFFAAAAAA);
const NATURAL_N60 = Color(0xFF848484);
const NATURAL_N70 = Color(0xFF666666);
const NATURAL_N80 = Color(0xFF3D3D3D);
const NATURAL_N90 = Color(0xFF212121);

const YELLOW_100 = Color(0xFFFFF3DD);
const YELLOW_200 = Color(0xFFFFDC99);
const YELLOW_400 = Color(0xFFFFBA33);
const YELLOW_500 = Color(0xFFFFA800);

const BLUE_50 = Color(0xFFF6F9FF);
const BLUE_100 = Color(0xFFEDF2FF);
const BLUE_200 = Color(0xFFE4EBFF);
const BLUE_400 = Color(0xFF487AFF);
const BLUE_500 = Color(0xFF416EE6);

const PINK_50 = Color(0xFFFFF1F1);
const PINK_100 = Color(0xFFFFD3D3);

const STORE_ROW_ITEM_TITLE = Color(0xFF1E1E1E);
const STORE_ROW_ITEM_SUBTITLE = Color(0xFF9D9D9D);

Color get randomColor =>
    Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

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
