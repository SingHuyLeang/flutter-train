import 'dart:developer';

import 'package:api_train/data/model/users_model.dart';
import 'package:dio/dio.dart';

class UsersRepository {
  final dio = Dio();
  final _url = "http://192.168.236.1:5000/api/user";

  Future<bool> addUsers(UserModel model) async {
    // Simulating a network request to add users
    return false;
  }

  Future<List<UserModel>> getUsers({int? id}) async {
    try {
      final response = await dio.get("$_url${id != null ? "/$id" : ""}");
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        final List<UserModel> users =
            data.map((json) => UserModel.fromJson(json)).toList();
        return users;
      }
    } on DioException catch (e) {
      log("Catch an exception while getting data [user] : $e");
    }
    return [];
  }

  Future<bool> updateUsers(UserModel model) async {
    // Simulating a network request to add users
    return false;
  }

  Future<bool> deleteUsers(int id) async {
    // Simulating a network request to add users
    return false;
  }
}
