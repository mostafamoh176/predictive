import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle appTextStyles({
    required Color color,
    required FontWeight fontWeight,
    required double fontSize,
    TextDecoration? fontDecoration,
    String? fontFamily
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily:fontFamily??'en',
      decoration: fontDecoration,

    );
  }
}
