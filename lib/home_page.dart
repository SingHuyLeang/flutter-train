import 'package:flutter/material.dart';
import 'package:flutter_train/components/custom_appbar.dart';
import 'package:flutter_train/constants/respone_size.dart';

import 'components/input.dart';

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
              SizedBox(height: Response.height(context, 32)),
              // - search field -
              Input(
                controller: TextEditingController(),
                hint: "Find you want",
                icon: "assets/images/search.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
