import 'package:flutter/material.dart';

class Response {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double width(BuildContext context, double size) {
    return (size * 375) / screenWidth(context);
  }

  static double fontSize(BuildContext context, double size) {
    return (size * 375) / screenWidth(context);
  }

  static double height(BuildContext context, double size) {
    return (size * 884) / screenHeight(context);
  }
}
