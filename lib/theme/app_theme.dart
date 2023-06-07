import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_launches/theme/theme.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Palette.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Palette.backgroundColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
    ),
  );
}
