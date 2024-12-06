import 'package:trains/model/user_model.dart';
import 'package:trains/repository/user_repository.dart';

class UserService {
  final userRepo = UserRepository();

  Future<bool> signUp(UserModel model) async {
    if (model.username.isEmpty || model.password.isEmpty) {
      throw Exception("Missing username or password");
    } else {
      return await userRepo.createAccount(model);
    }
  }


  Future<bool> signIn(UserModel model) async {
    if (model.username.isEmpty || model.password.isEmpty) {
      throw Exception("Missing username or password");
    } else {
      return await userRepo.login(model);
    }
  }

}
