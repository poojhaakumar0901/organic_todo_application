import "package:flutter/material.dart";
import "../utils/theme/text_styles.dart";

class AppTheme {
  const AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFD233)),
    useMaterial3: true,
    textTheme: const TextTheme(
      headlineSmall: AppTextStyles.headlineSmall,
      bodyMedium: AppTextStyles.bodyMedium,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      headlineSmall: AppTextStyles.headlineSmallDark,
      bodyMedium: AppTextStyles.bodyMediumDark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
  );
}
