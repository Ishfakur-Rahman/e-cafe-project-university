class Token {
  String? token;

  Token({this.token});

  Token.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }
}

class RegistrationResponse {
  String? response;
  String? email;
  String? username;
  String? role;

  RegistrationResponse({this.response, this.email, this.username, this.role});

  RegistrationResponse.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    email = json['email'];
    username = json['username'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['email'] = this.email;
    data['username'] = this.username;
    data['role'] = this.role;
    return data;
  }
}