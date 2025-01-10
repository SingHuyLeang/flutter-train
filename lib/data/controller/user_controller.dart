import 'package:api_train/data/model/users_model.dart';
import 'package:api_train/data/repository/users_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _userRepo = UsersRepository();
  final users     = <UserModel>[].obs;
  
  @override
  void onInit() async {
    super.onInit();
    users.value = await _userRepo.getUsers();
  }

}
