import 'package:flutter/material.dart';
import 'package:schat/app/config/app_colors.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///
class AppTextStyles {
  static TextStyle title = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle body = const TextStyle(
    fontSize: 13,
    color: Colors.grey,
  );

  static TextStyle largeNumber = const TextStyle(
    fontSize: 24,
    color: AppColors.grey600,
  );

  static TextStyle bodyTiny = const TextStyle(
    fontSize: 12,
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w400,
  );
}
