import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trains/model/user_model.dart';
import 'package:trains/pages/home_screen.dart';
import 'package:trains/service/user_service.dart';

class UserController extends GetxController {
  final userService = UserService();

  // -------- optimization ----------
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  // flase = sign up & true = sign in //
  final RxBool isSignIn = false.obs;
  final RxBool loading = false.obs;

  // actions
  void actions() async {
    loading.value = true;
    final sucessed = !isSignIn.value
        ? await userService.signUp(
            UserModel(
              username: usernameCtrl.text,
              password: passwordCtrl.text,
            ),
          )
        : await userService.signIn(
            UserModel(
              username: usernameCtrl.text,
              password: passwordCtrl.text,
            ),
          );
    if (sucessed) {
      loading.value = false;
      Get.offAll(() => HomeScreen());
    }

    update();
  }
}
