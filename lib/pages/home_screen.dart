import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trains/components/input_text.dart';
import 'package:trains/components/todo_card.dart';
import 'package:trains/controller/todo_controller.dart';
import 'package:trains/model/todo_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final todoCtrl = Get.put(ToDoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Simple form data',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    InputText(
                      controller: todoCtrl.titleCtrl,
                      hint: "Enter title",
                    ),
                    const SizedBox(height: 16),
                    InputText(
                      controller: todoCtrl.contentCtrl,
                      hint: "Enter content",
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: CupertinoButton(
                        color: Colors.black,
                        onPressed: () async => todoCtrl.actions(),
                        child: Text(
                          todoCtrl.btnText.value,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Simple List data',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              StreamBuilder<QuerySnapshot>(
                stream: todoCtrl.todoService.repo.snapshot,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text(
                      'Error: ${snapshot.error}',
                      style: const TextStyle(color: Colors.red),
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (!snapshot.hasData) {
                    return const Text('No data');
                  } else {
                    final data = snapshot.data!.docs;
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final model = ToDoModel.fromJson(
                          data[index].data() as Map<String, dynamic>,
                        );
                        return TodoCard(
                          onTapEdit: ()=> todoCtrl.updateTodo(data[index].id, model),
                          onTapDelete: () => todoCtrl.delete(data[index].id),
                          model: model,
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
