import 'package:api_train/data/model/users_model.dart';
import 'package:api_train/data/repository/users_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _userRepo = UsersRepository();
  final users = <UserModel>[].obs;

  void refreshData() async {
    users.value = await _userRepo.getUsers();
    update();
  }

  Future<bool> addUser(UserModel model) async {
    bool success = await _userRepo.addUsers(model);
    if (success) {
      refreshData();
    }
    update();
    return success;
  }
}
