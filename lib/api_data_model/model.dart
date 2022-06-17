class Token {
  String? token;

  Token({this.token});

  Token.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }
}


class UserTypeRoleModel {
  String? role;
  String? user;

  UserTypeRoleModel({this.role, this.user});

  UserTypeRoleModel.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    data['user'] = this.user;
    return data;
  }
}
