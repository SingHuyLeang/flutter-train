import 'package:trains/model/todo_model.dart';

import '../repository/todo_repository.dart';

class ToDoService {
  final repo = ToDoRepository();

  Future<bool> createTodo(ToDoModel model) async {
    if (model.title.isNotEmpty && model.content.isNotEmpty) {
      return await repo.add(model);
    } else {
      return false;
    }
  }

  Future<bool> delete(String id) async {
    if (id.isNotEmpty) {
      return await repo.delete(id);
    } else {
      return false;
    }
  }


  Future<bool> update(String id,ToDoModel model) async {
    if (id.isNotEmpty && model.title.isNotEmpty && model.content.isNotEmpty) {
      return await repo.update(id, model);
    } else {
      return false;
    }
  }
}

/**
 * String name;
 * -- is empty or not
 * name.isEmpty ? true : false
 * name.isNotEmpty ? true : false
 */