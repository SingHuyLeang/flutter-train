import 'package:api_train/common/styles/typhographies.dart';
import 'package:api_train/data/controller/user_controller.dart';
import 'package:api_train/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final userCtrl = Get.put(UserController());
  final networkService = Get.put(NetworkService());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home Page', style: typographies.title()),
          ),
          body: networkService.isConnected.isFalse
              ? const Center(child: Text('No Internet!'))
              : Column(
                  children: List.generate(
                    userCtrl.users.length,
                    (index) => Text("${userCtrl.users[index].username}"),
                  ),
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
        );
      },
    );
  }
}
