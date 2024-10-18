import 'package:flutter/material.dart';

class Checks {
  static bool isDark(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.dark;
}
