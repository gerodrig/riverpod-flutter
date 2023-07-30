import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  final bool isDarkMode;

  const AppTheme({this.isDarkMode = false});

  getTheme() => ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        listTileTheme: const ListTileThemeData(
          iconColor: seedColor,
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.montserratAlternates(fontSize: 50),
          titleMedium: GoogleFonts.russoOne(fontSize: 26),
        ),
      );
}
