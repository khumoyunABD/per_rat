// Create a file called theme_extensions.dart

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
  // Add more as needed
}
