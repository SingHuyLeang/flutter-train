import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/typhographies.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.isBlankStyle = false,
    this.height,
    this.hintText,
    this.style,
    this.hintStyle,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
    this.controller,
  });

  final TextEditingController? controller;
  final bool isBlankStyle;
  final double? height;
  final String? hintText;
  final TextStyle? style, hintStyle;
  final TextInputType? keyboardType;
  final int? maxLines, maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      decoration: !isBlankStyle
          ? BoxDecoration(
              color: AppColors.primary.withOpacity(0.05),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                width: 1.5,
                color: AppColors.dark,
                style: BorderStyle.solid,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
            )
          : null,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        maxLength: maxLength,
        buildCounter: (
          context, {
          required currentLength,
          required isFocused,
          required maxLength,
        }) =>
            null,
        style: style ?? typographies.paragraph(color: AppColors.dark),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 13),
          hintText: hintText,
          hintStyle: hintStyle ??
              typographies.paragraph(
                color: AppColors.dark.withOpacity(0.6),
              ),
        ),
      ),
    );
  }
}
