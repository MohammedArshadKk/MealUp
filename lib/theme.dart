import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_up/application/core/utils/colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.seconderyColor,
    appBarTheme: AppBarTheme(
      color: AppColors.seconderyColor,
      toolbarHeight: 100,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
