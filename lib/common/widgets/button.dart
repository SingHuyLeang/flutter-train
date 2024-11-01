import 'package:flutter/material.dart';
import 'package:fruit_app/utils/themes/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.onTap,
    required this.icon,
    this.isTransparent = false,
  });
  final void Function()? onTap;
  final IconData icon;
  final bool isTransparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 26,
        height: 26,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isTransparent ? Colors.transparent : AppColor.primary,
        ),
        child: Icon(
          icon,
          color: isTransparent ? Colors.transparent : Colors.white,
        ),
      ),
    );
  }
}
