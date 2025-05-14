class UserLogin {
  int? id;
  String? user;
  String? senha;

  UserLogin({this.id, this.senha, this.user});

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return UserLogin(
      id: json['id'],
      user: json['user'],
      senha: json['senha'],
    );
  }
}
