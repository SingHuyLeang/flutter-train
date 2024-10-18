import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_train/constants/dark_light.dart';
import 'package:flutter_train/constants/respone_size.dart';
import 'package:flutter_train/theme/color.dart';
import 'package:flutter_train/theme/text_theme.dart';

class Input extends StatelessWidget {
  const Input(
      {super.key,
      required this.hint,
      required this.icon,
      required this.controller});

  final TextEditingController controller;
  final String hint;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Response.height(context, 50),
      padding: EdgeInsets.only(
        left: Response.width(context, 16),
      ),
      margin: EdgeInsets.symmetric(horizontal: Response.width(context, 16)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Checks.isDark(context)
              ? ThemeColor.light.withOpacity(0.1)
              : ThemeColor.dark.withOpacity(0.1),
          width: 2,
        ),
      ),
      child: TextField(
        controller: controller,
        style: textStyle(context),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: textStyle(context, color: ThemeColor.secondary),
            suffixIcon: GestureDetector(
              onTap: () => log("You clicked the suffix"),
              child: Image.asset(icon),
            )),
      ),
    );
  }
}
