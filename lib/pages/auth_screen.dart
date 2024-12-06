import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:trains/components/input_text.dart';
import 'package:trains/controller/user_controller.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final userCtrl = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  height: 200,
                  'https://cdni.iconscout.com/illustration/premium/thumb/content-management-illustration-download-in-svg-png-gif-file-formats--analytics-logo-web-interface-software-and-development-pack-people-illustrations-3726921.png?f=webp',
                ),
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    userCtrl.isSignIn.value ? 'Sign In' : 'Sign up',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                InputText(
                  controller: userCtrl.usernameCtrl,
                  hint: "Enter your username",
                ),
                const SizedBox(height: 16),
                InputText(
                  controller: userCtrl.passwordCtrl,
                  hint: "Enter your password",
                ),
                const SizedBox(height: 32),
                CupertinoButton(
                  color: Colors.blue[100],
                  onPressed: () => userCtrl.actions(),
                  child: Text(
                    userCtrl.loading.value
                        ? "Loading..."
                        : userCtrl.isSignIn.value
                            ? 'Sign In'
                            : 'Sign up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                const SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do you have an account ? "),
                    GestureDetector(
                      onTap: () =>
                          userCtrl.isSignIn.value = !userCtrl.isSignIn.value,
                      child: Text(
                        "Sign ${!userCtrl.isSignIn.value ? "In" : "up"}",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
