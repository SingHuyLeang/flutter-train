import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trains/model/todo_model.dart';

class ToDoRepository {
  final _firestore = FirebaseFirestore.instance.collection("/todos");
  final snapshot = FirebaseFirestore.instance.collection("/todos").snapshots();

  Future<bool> add(ToDoModel model) async {
    final reponse = await _firestore.add(model.toJson());
    return reponse.id.isNotEmpty;
  }

  Future<bool> delete(String id) async {
    final doc = await _firestore.doc(id).get();
    if (!doc.exists) {
      return false;
    }
    await _firestore.doc(id).delete();
    return true;
  }

  Future<bool> update(String id, ToDoModel model) async {
    final docRef = await _firestore.doc(id).get();
    if (!docRef.exists) {
      return false;
    }

    await _firestore.doc(id).update(model.toJson());
    return true;
  }
}
