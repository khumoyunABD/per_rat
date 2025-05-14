// new color update
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  surface: const Color.fromARGB(255, 56, 49, 66),
  outline: Color.fromARGB(255, 84, 74, 100),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.robotoSerifTextTheme().copyWith(
    titleSmall: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.normal,
    ),
    titleMedium: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.normal,
    ),
    titleLarge: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.bold,
    ),
  ),
);
