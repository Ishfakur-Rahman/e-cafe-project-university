// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MColors {
  static const backgroundColor = Color.fromARGB(255, 253, 252, 251);
  static var secondaryBackgroundColor = primaryColorLight.withOpacity(0.3);
  static const primaryColorDark = Color(0xFF430C05);
  static const primaryColor = Color(0xFF8D3113);
  static const primaryColorLight = Color.fromARGB(255, 199, 123, 24);
  static const pink = Color.fromARGB(255, 240, 112, 112);
  static const yellow = Color(0xFFFFBF66);
  static const blue = Color(0xFF08C5D1);
  static const black1 = Color(0xFF0E0504);
  static const shadowColor = Color.fromARGB(181, 24, 23, 23);
  static const dividerColor = Color.fromARGB(181, 61, 28, 28);

  static ThemeData colorThemeData = ThemeData(
    primaryColorLight: MColors.primaryColorLight,
    primaryColor: MColors.primaryColor,
    primaryColorDark: MColors.primaryColorDark,
    backgroundColor: MColors.backgroundColor,
    shadowColor: MColors.shadowColor,
    dividerColor: MColors.dividerColor,
  );
}
