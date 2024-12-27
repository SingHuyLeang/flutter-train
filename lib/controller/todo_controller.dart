import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trains/model/todo_model.dart';
import 'package:trains/service/to_do_service.dart';

class ToDoController extends GetxController {
  final todoService = ToDoService();

  final titleCtrl = TextEditingController();
  final contentCtrl = TextEditingController();

  RxBool isAdd = true.obs;
  final btnText = "Save".obs;
  final docId = "".obs;

  void clear() {
    titleCtrl.clear();
    contentCtrl.clear();
    btnText.value = "Save";
    isAdd.value = true;
  }

  void actions() async {
    btnText.value = "Saving";

    final rs = isAdd.value
        ? await todoService.createTodo(ToDoModel(
            titleCtrl.text,
            contentCtrl.text,
          ))
        : await todoService.update(
            docId.value,
            ToDoModel(
              titleCtrl.text,
              contentCtrl.text,
            ));
    if (rs) {
      btnText.value = "Saved";
      clear();
    } else {
      btnText.value = "Failed";
    }
    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () => btnText.value = "Save",
    );
    update();
  }

  void delete(String id) async {
    if (await todoService.delete(id)) {
      Get.snackbar('Alert', '$id is omitted');
    } else {
      Get.snackbar('Alert', 'Failed to omit $id');
    }
    update();
  }

  void updateTodo(String id, ToDoModel model) async {
    titleCtrl.text = model.title;
    contentCtrl.text = model.content;
    docId.value = id;
    isAdd.value = false;
    btnText.value = "Update";
    update();
  }
}
