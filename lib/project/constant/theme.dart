import 'package:flutter/material.dart';

import 'package:get/get.dart';

const Color primaryColor = Color(0x00578F);
const Color white = Colors.white;
const Color pinkColor = Color(0xFFff4667);
const Color yellowColor = Color(0xFFFFB746);
const Color darkGreyColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    colorScheme: const ColorScheme.light(
        primary: primaryColor,
        brightness: Brightness.light,
        surface: Colors.white),
  );

  static final dark = ThemeData(
      colorScheme: const ColorScheme.dark(
    primary: primaryColor,
    brightness: Brightness.dark,
    surface: darkGreyColor,
  ));
}

TextStyle get subHeadingStyle {
  return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.grey[400] : Colors.grey);
}

TextStyle get headingStyle {
  return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white : Colors.black);
}

TextStyle get dateForStyle {
  return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.grey[400] : Colors.grey);
}

TextStyle get titleStyle {
  return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white : Colors.black);
}

TextStyle get subtitleStyle {
  return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700]);
}
