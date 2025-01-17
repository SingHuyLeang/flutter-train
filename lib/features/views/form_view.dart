import 'package:api_train/common/styles/colors.dart';
import 'package:api_train/common/styles/typhographies.dart';
import 'package:api_train/common/widgets/app_text_field.dart';
import 'package:api_train/features/view_model/app_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormView extends StatelessWidget {
  FormView({super.key});

  final appVM = Get.find<AppViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => appVM.toBack(),
          child: const Icon(Icons.arrow_back, color: AppColors.dark),
        ),
        title: const Text('Form Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        child: Form(
          child: Column(
            children: [
              AppTextField(
                controller: appVM.usernameCtrl,
                height: 45,
                hintText: "Enter your username",
              ),
              const SizedBox(height: 16),
              AppTextField(
                controller: appVM.emailCtrl,
                height: 45,
                hintText: "Enter your email",
              ),
              const SizedBox(height: 16),
              AppTextField(
                controller: appVM.passwordCtrl,
                height: 45,
                hintText: "Enter your password",
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CupertinoButton(
                  color: AppColors.primary,
                  onPressed: () {},
                  child: Text(
                    "Create",
                    style: typographies.title(
                      color: AppColors.light,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
