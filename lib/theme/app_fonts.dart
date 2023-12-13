// ignore_for_file: non_constant_identifier_names

//EXTERNOS
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//INTERNOS
import 'app_colors.dart';

TextTheme TEXT_THEME_WHITE = TextTheme(
  displayLarge: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w500,
    fontSize: 25,
  ),
  displayMedium: GoogleFonts.montserrat(
    color: AppColors.COLOR_TEXT_GREY1,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  ),
  bodyLarge: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.5,
  ),
  bodyMedium: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  ),
  titleMedium: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w300,
    fontSize: 14,
  ),
  labelLarge: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  ),
);
