import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTheme{
static ThemeData lightTheme=ThemeData(
textTheme: TextTheme(
  titleLarge: GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700
  ),
  bodyLarge: GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600
  ),
  bodyMedium:GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w500
  ),
  bodySmall: GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500
  )
),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor:Color(0xff027A48),
    selectedIconTheme: IconThemeData(color:Color(0xff027A48))
  ),
    scaffoldBackgroundColor: Colors.white
);
}