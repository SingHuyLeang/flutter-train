import 'package:flutter/material.dart';
import 'package:flutter_train/constants/dark_light.dart';
import 'package:flutter_train/constants/font_family.dart';
import 'package:flutter_train/constants/respone_size.dart';
import 'package:flutter_train/theme/color.dart';

TextStyle textStyle(
  BuildContext context, {
  double fontSize = 16,
  String fontFamily = FontFamily.regular,
  Color? color,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: Response.fontSize(context, fontSize),
    color:
        color ?? (Checks.isDark(context) ? ThemeColor.light : ThemeColor.dark),
  );
}
