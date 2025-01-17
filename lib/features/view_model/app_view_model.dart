import 'package:api_train/data/controller/user_controller.dart';
import 'package:api_train/data/model/users_model.dart';
import 'package:api_train/features/views/form_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppViewModel extends GetxController {
  final userController = Get.put(UserController());
  final data = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    data.value = userController.users;
  }

  // -- ui --
  final isFormUpdate = false.obs;
  final usernameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void clear() {
    usernameCtrl.text = '';
    emailCtrl.text = '';
    passwordCtrl.text = '';
  }

  void toFormView({int? index}) {
    isFormUpdate.value = index != null;
    if (isFormUpdate.value) {
      final user = data[index!];
      usernameCtrl.text = user.username!;
      emailCtrl.text = user.email!;
      passwordCtrl.text = user.password!;
      Get.to(() => FormView());
    } else {
      Get.to(() => FormView());
    }
  }

  void toBack() {
    Get.back();
    clear();
  }
}
