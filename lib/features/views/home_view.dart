import 'package:api_train/common/styles/colors.dart';
import 'package:api_train/common/styles/typhographies.dart';
import 'package:api_train/features/view_model/app_view_model.dart';
import 'package:api_train/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final appVM = Get.put(AppViewModel());
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
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: List.generate(
                      appVM.data.length,
                      (index) => Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.primary,
                            child: Text(
                              "${appVM.data[index].id}",
                              style: typographies.display(
                                fontWeight: FontWeight.bold,
                                color: AppColors.light,
                              ),
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${appVM.data[index].username}",
                                style: typographies.title(),
                              ),
                              GestureDetector(
                                onTap: () => appVM.toFormView(index: index),
                                child: const Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            "${appVM.data[index].email}",
                            style: typographies.paragraph(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => appVM.toFormView(),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
