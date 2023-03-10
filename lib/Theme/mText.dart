// ignore_for_file: prefer_initializing_formals, overridden_fields, use_key_in_widget_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:versity_project_coffee/Theme/mColors.dart';

class MText extends Text {
  MText(this.data,
      {this.decoration, this.fontWeight, this.fontSize, this.color})
      : super('');

  Color? color = MColors.black1;
  double? fontSize = 16.0;
  FontWeight? fontWeight = FontWeight.normal;
  TextDecoration? decoration;

  @override
  final String data;

  Text text() {
    return Text(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text text2() {
    color = Colors.white;
    fontSize = 18;
    return Text(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text coffeeText() {
    color = Color.fromARGB(255, 241, 192, 146);
    fontSize = 18;
    return Text(
      data,
      style: textThemePoppins(color, fontWeight, fontSize),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text heading1() {
    fontWeight = FontWeight.bold;
    fontSize = 28;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  Text heading2() {
    fontWeight = FontWeight.w600;
    fontSize = 20;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  Text heading3() {
    fontWeight = FontWeight.w600;
    fontSize = 18;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  Text textline1() {
    fontWeight = FontWeight.w400;
    fontSize = 20;
    return Text(data, style: textThemePoppins(color, fontWeight, fontSize));
  }

  static TextStyle textThemePoppins(
      Color? color, FontWeight? fontWeight, double? fontSize) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      overflow: TextOverflow.ellipsis,
    ));
  }

  TextStyle textThemeMarkScript(
      Color? color, FontWeight? fontWeight, double? fontSize) {
    return GoogleFonts.marckScript(
        textStyle: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            overflow: TextOverflow.ellipsis));
  }

  String sString() {
    return 'MText(data: $data, color: $color, fontWeight: $fontWeight, fontSize: $fontSize)';
  }
}
