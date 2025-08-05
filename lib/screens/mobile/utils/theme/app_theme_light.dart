import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.white,
    primary: const Color(0xFFFF5722),
  );

  /// Thème global basé sur `ThemeData().copyWith()`
  static final ThemeData theme = ThemeData().copyWith(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: const Color(0xFFFCFCFC),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFCFCFC),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: GoogleFonts.montserratTextTheme().copyWith(
      displayLarge: GoogleFonts.montserrat(fontSize: 19, color: Colors.black),
      labelLarge: GoogleFonts.montserrat(fontSize: 20, color: Colors.black),
      displayMedium: GoogleFonts.montserrat(fontSize: 15, color: Colors.black),
      labelSmall: GoogleFonts.montserrat(fontSize: 13, color: Colors.black),
      displaySmall: GoogleFonts.montserrat(fontSize: 11, color: Colors.black),
      labelMedium: GoogleFonts.montserrat(fontSize: 17, color: Colors.black),
      titleSmall: GoogleFonts.montserrat(fontSize: 8, color: Colors.black),
    ),
  );
}
