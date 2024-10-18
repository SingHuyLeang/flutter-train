import 'package:flutter/material.dart';
import 'package:flutter_train/constants/font_family.dart';
import 'package:flutter_train/theme/color.dart';
import 'package:flutter_train/theme/text_theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.firstName,
    required this.userProfile,
    this.newProduct = 25,
    this.events = 6,
  });
  final String firstName, userProfile;
  final int newProduct, events;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // content
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, $firstName",
                  style: textStyle(
                    context,
                    fontSize: 28,
                    fontFamily: FontFamily.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                    "Explore new $newProduct product and $events events today.",
                    style: textStyle(context, color: ThemeColor.primary)),
              ],
            ),
          ),
          // profile
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(userProfile),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
