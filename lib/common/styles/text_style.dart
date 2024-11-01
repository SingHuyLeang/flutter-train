import 'package:flutter/material.dart';

TextStyle textStyle({
  double fontSize = 16,
  FontWeight? fontWeight,
  Color? color,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'Poppins',
    );
