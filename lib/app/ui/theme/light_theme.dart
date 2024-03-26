import 'package:client_vkr/app/ui/theme/eleveted_button_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  hintColor: Colors.grey.withOpacity(0.5),
  elevatedButtonTheme: lightElevatedButtonThemeData,
  textTheme: TextTheme(
    labelMedium: GoogleFonts.montserrat(),
    titleMedium: GoogleFonts.montserrat(),
    titleLarge: GoogleFonts.montserrat(),
    titleSmall: GoogleFonts.montserrat(),
  ),
);
