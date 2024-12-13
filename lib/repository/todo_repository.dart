import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trains/model/todo_model.dart';

class ToDoRepository {
  final _firestore = FirebaseFirestore.instance.collection("/todos");
  final snapshot = FirebaseFirestore.instance.collection("/todos").snapshots();

  Future<bool> add(ToDoModel model) async {
    final reponse = await _firestore.add(model.toJson());
    return reponse.id.isNotEmpty;
  }
}
