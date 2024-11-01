import 'package:flutter/material.dart';
import 'package:fruit_app/features/app/home_page.dart';
import 'package:fruit_app/utils/themes/colors.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.primary,
      ),
      home: const HomePage(),
    );
  }
}
