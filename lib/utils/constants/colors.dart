import 'package:flutter/material.dart';

class FColors {
  FColors._();

  // App Basic Color
  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFB0C7FF);

  // Gradient Color
  static const Gradient linearGradientColor = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );

  // Text Color
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6C757D);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Background Color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3F5FF);

  // Background Container Color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = FColors.white.withOpacity(0.1);
  static const Color primaryContainerBackgroundColor = Color(0xFFF3F5FF);

  // Button Color
  static const Color buttonPrimaryColor = Color(0xFF333333);
  static const Color buttonSecondaryColor = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFFFFFFF);

  // Border Color
  static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);

  // Error & Validation Color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color darkGrey = Color(0xFF939393);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
}
