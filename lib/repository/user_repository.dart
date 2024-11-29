import 'package:firebase_auth/firebase_auth.dart';
import 'package:trains/model/user_model.dart';

interface class UserRepository {
  final auth = FirebaseAuth.instance;

  // create a new user
  Future<bool> createAccount(UserModel model) async {
    final response = await auth.createUserWithEmailAndPassword(
      email: model.username,
      password: model.password,
    );
    return response.user != null;
  }
  // user login
}
