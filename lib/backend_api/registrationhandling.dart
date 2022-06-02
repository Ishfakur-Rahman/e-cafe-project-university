import 'dart:convert';
import 'package:versity_project_coffee/backend_api/model.dart';
import 'package:http/http.dart' as http;

class RegistrationHelper {
  Future registrating(
      {required String userName,
      required String email,
      required String password,
      required String userTypes}) async {
    http.Response response = await http.post(
      Uri.parse('https://coffee-app-system.herokuapp.com/register/'),
      body: {
        "email": "$email",
        "username": "$userName",
        "password": "$password",
        "role": "$userTypes"
      },
    );
    if (response.statusCode == 200) {
      var token = Token.fromJson(jsonDecode(response.body)).token;
      return token;
    } else {
      return "failed to register";
    }
  }
}
