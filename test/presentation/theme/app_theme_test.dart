import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:prueba/presentation/theme/app_theme.dart';
import 'package:prueba/presentation/theme/design_tokens.dart';

void main() {
  group('AppTheme', () {
    test('light theme has correct color scheme', () {
      final theme = AppTheme.lightTheme;

      expect(theme.colorScheme.brightness, Brightness.light);
      expect(theme.colorScheme.primary, AppColors.primary);
      expect(theme.colorScheme.surface, AppColors.surface);
    });

    test('dark theme has correct color scheme', () {
      final theme = AppTheme.darkTheme;

      expect(theme.colorScheme.brightness, Brightness.dark);
      expect(theme.colorScheme.primary, AppColors.primary);
      expect(theme.colorScheme.surface, AppColors.darkSurface);
    });

    test('both themes use SF Pro typography', () {
      final lightTheme = AppTheme.lightTheme;
      final darkTheme = AppTheme.darkTheme;

      expect(lightTheme.textTheme.displayLarge?.fontFamily, AppTypography.fontFamily);
      expect(darkTheme.textTheme.displayLarge?.fontFamily, AppTypography.fontFamily);
    });

    test('themes have glassmorphism card theme', () {
      final lightTheme = AppTheme.lightTheme;
      final darkTheme = AppTheme.darkTheme;

      expect(lightTheme.cardTheme.shape, isA<RoundedRectangleBorder>());
      expect(darkTheme.cardTheme.shape, isA<RoundedRectangleBorder>());
    });
  });
}