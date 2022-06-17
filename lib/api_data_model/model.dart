class RegistrationResponse {
  String? response;
  String? email;
  String? username;
  String? role;
  String? token;

  RegistrationResponse(
      {this.response, this.email, this.username, this.role, this.token});

  RegistrationResponse.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    email = json['email'];
    username = json['username'];
    role = json['role'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['email'] = this.email;
    data['username'] = this.username;
    data['role'] = this.role;
    data['token'] = this.token;
    return data;
  }
}