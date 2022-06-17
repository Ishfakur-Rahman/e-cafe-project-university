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
}