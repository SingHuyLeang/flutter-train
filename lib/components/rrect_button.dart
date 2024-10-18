import 'package:flutter/material.dart';
import 'package:flutter_train/constants/respone_size.dart';
import 'package:flutter_train/theme/color.dart';
import 'package:flutter_train/theme/text_theme.dart';

class RRectButton extends StatelessWidget {
  const RRectButton({super.key, required this.count, required this.onTap});

  final Function() onTap;
  final int count;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Response.width(context, 30),
        height: Response.height(context, 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: ThemeColor.primary,
        ),
        alignment: Alignment.center,
        child: Text(
          count <= 0 ? "+" : "$count",
          style: textStyle(context,
              color: ThemeColor.light, fontSize: count <= 0 ? 22 : 16),
        ),
      ),
    );
  }
}
