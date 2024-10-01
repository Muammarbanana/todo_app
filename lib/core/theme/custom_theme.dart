import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 10,
        shape: const Border(
          bottom: BorderSide(
            width: 0.5,
          ),
        ),
      ),
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.pinkAccent; // Color when checkbox is selected
          }
          return Colors.white; // Color when checkbox is unselected
        }),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pinkAccent,
          elevation: 0,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: GoogleFonts.urbanist(
            textStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pinkAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pinkAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        hintStyle: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        labelStyle: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      primaryColor: Colors.pinkAccent,
      primaryColorDark: Colors.pinkAccent,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        bodyLarge: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        bodyMedium: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        bodySmall: GoogleFonts.urbanist(
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
