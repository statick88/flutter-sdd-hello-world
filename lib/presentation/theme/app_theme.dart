import 'package:flutter/material.dart';
import 'package:flutter_sdd_hello_world/presentation/theme/design_tokens.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimary,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        surface: AppColors.surface,
        surfaceContainerHighest: AppColors.surfaceVariant,
        onSurface: AppColors.onSurface,
        onSurfaceVariant: AppColors.onSurfaceVariant,
      ),
      textTheme: _textTheme(Brightness.light),
      cardTheme: CardThemeData(
        color: AppColors.glassBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppEffects.borderRadiusCard),
        ),
      ),
      scaffoldBackgroundColor: AppColors.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: _textTheme(Brightness.light).titleLarge?.copyWith(
          color: AppColors.onSurface,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimary,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        surface: AppColors.darkSurface,
        surfaceContainerHighest: AppColors.darkSurfaceVariant,
        onSurface: AppColors.darkOnSurface,
        onSurfaceVariant: AppColors.darkOnSurfaceVariant,
      ),
      textTheme: _textTheme(Brightness.dark),
      cardTheme: CardThemeData(
        color: AppColors.darkGlassBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppEffects.borderRadiusCard),
        ),
      ),
      scaffoldBackgroundColor: AppColors.darkSurface,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: _textTheme(Brightness.dark).titleLarge?.copyWith(
          color: AppColors.darkOnSurface,
        ),
      ),
    );
  }

  static TextTheme _textTheme(Brightness brightness) {
    final onSurfaceColor = brightness == Brightness.light
        ? AppColors.onSurface
        : AppColors.darkOnSurface;

    return TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(color: onSurfaceColor),
      displayMedium: AppTypography.displayMedium.copyWith(color: onSurfaceColor),
      headlineLarge: AppTypography.headlineLarge.copyWith(color: onSurfaceColor),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: onSurfaceColor),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.onSurfaceVariant),
      titleLarge: AppTypography.headlineLarge.copyWith(color: onSurfaceColor),
    ).apply(
      bodyColor: onSurfaceColor,
      displayColor: onSurfaceColor,
    );
  }
}