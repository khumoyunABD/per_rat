import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;

  // App-specific color shortcuts
  Color get background => colors.surface;
  Color get contentText => colors.onSurface;
  Color get highlight => colors.primary;
  Color get navBarBackground => colors.surface;
  Color get unselectedNavItem => colors.onSurface.withOpacity(0.7);

  // Enhanced color scheme for better UI
  Color get logoColor => const Color(0xFF2b233b);
  Color get gradientStart => const Color(0xFF2b233b);
  Color get gradientEnd => Colors.deepPurple.shade900;
  Color get accentGold => Colors.amber.shade300;
  Color get surfaceOverlay => Colors.white.withOpacity(0.1);
  Color get textFieldBorder => Colors.white.withOpacity(0.2);
  Color get textFieldFocusBorder => Colors.amber.shade300;
  Color get shadowColor => Colors.black.withOpacity(0.1);
}
