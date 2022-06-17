class Token {
  String? token;

  Token({this.token});

  Token.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }
}

class UserNameAndRole {
  String? role;
  String? user;

  UserNameAndRole({this.role, this.user});

  UserNameAndRole.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    user = json['user'];
  }
}