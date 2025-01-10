class UserModel {
  int? id;
  String? username;
  String? email;
  String? password;

  UserModel({this.id, this.username, this.email, this.password});

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'password': password,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int?,
        username: json['username'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
      );
}
