import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trains/model/todo_model.dart';
import 'package:trains/service/to_do_service.dart';

enum Status { save, update, delete }

class ToDoController extends GetxController {
  final todoService = ToDoService();

  final titleCtrl = TextEditingController();
  final contentCtrl = TextEditingController();

  Status action = Status.save;
  final btnText = "Save".obs;

  void clear() {
    titleCtrl.clear();
    contentCtrl.clear();
    btnText.value = "Save";
    action = Status.save;
  }

  void actions() async {
    btnText.value = "Saving";
    switch (action) {
      case Status.save:
        {
          final rs = await todoService
              .createTodo(ToDoModel(titleCtrl.text, contentCtrl.text));
          if (rs) {
            btnText.value = "Saved";
            clear();
          } else {
            btnText.value = "Failed";
          }
        }
        break;
      case Status.update:
        break;
      case Status.delete:
        break;
    }

    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () => btnText.value = "Save",
    );
    update();
  }
}
