import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Color(0xFFE4B764);
  static const secondaryColor = Colors.black;
  static const primaryTextColor = Color(0xFF1A1A1A);
  static const secondaryTextColor = Colors.white;
  static const primaryGradient = LinearGradient(
    colors: [
      Color(0xFFF8E889),
      primaryColor,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment(0.8, 1),
    tileMode: TileMode.mirror,
  );
  static const secondaryGradient = LinearGradient(
    colors: [
      Color(0xFF5C5C5C),
      secondaryColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.mirror,
  );
  static const accentGradient = LinearGradient(
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFEEEEEE),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.mirror,
  );
}
