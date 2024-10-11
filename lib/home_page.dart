import 'package:flutter/material.dart';
import 'package:flutter_train/components/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final message = TextEditingController();

  final String firstName = "Simone";
  final String userProfile = "assets/images/profile.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Custom Appbar
              CustomAppBar(
                firstName: firstName,
                userProfile: userProfile,
              ),
              // Custom Body
            ],
          ),
        ),
      ),
    );
  }
}
