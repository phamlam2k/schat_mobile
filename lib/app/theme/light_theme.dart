import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schat/app/config/app_colors.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  fontFamily: GoogleFonts.roboto().fontFamily,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black87),
    titleTextStyle: TextStyle(color: AppColors.lightPrimary, fontSize: 24),
  ),
  colorScheme: ColorScheme.light(
    primary: AppColors.lightPrimary,
    secondary: AppColors.lightSecondary,
    tertiary: AppColors.lightTertiary,
  ),
  scaffoldBackgroundColor: AppColors.lightBackground,
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightSecondary,
      ),
    ),
    floatingLabelStyle: TextStyle(color: AppColors.lightSecondary),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(fontSize: 14),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: AppColors.lightPrimary,
          width: 1,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  ),
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(TextStyle(
        fontSize: 14,
      )),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.comfortable,
    ),
  ),
  textTheme: const TextTheme(
    labelSmall: TextStyle(color: AppColors.nature100),
    labelMedium: TextStyle(color: AppColors.nature100),
    labelLarge: TextStyle(color: AppColors.nature100),
    titleLarge: TextStyle(color: AppColors.nature100),
    titleMedium: TextStyle(color: AppColors.nature100),
    titleSmall: TextStyle(color: AppColors.nature100),
    bodyLarge: TextStyle(color: AppColors.nature100),
    bodyMedium: TextStyle(color: AppColors.nature100),
    bodySmall: TextStyle(color: AppColors.nature100),
  ),
  cardTheme: const CardTheme(
    margin: EdgeInsets.zero, // Remove default margin
  ),
);
