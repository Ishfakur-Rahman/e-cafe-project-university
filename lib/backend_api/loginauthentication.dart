import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/api_data_model/get_shops_model.dart';
import 'dart:convert';
import 'package:versity_project_coffee/api_data_model/model.dart';

class Authentication {
  Future<String> login_auth(
      {required String email, required String password}) async {
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-systems.herokuapp.com/login/'),
        body: {"username": email, "password": password});
    if (response.statusCode == 200) {
      var result = Token.fromJson(jsonDecode(response.body));
      return result.token!;
    } else {
      return "empty";
    }
  }

  Future<String> user_role({required String token}) async {
    http.Response response = await http.get(
      Uri.parse('https://coffee-app-systems.herokuapp.com/get-user/$token/'),
      headers: {"Authorization": "Token $token"},
    );

    if (response.statusCode == 200) {
      var roles = UserNameAndRole.fromJson(jsonDecode(response.body));
      return roles.role!;
    } else {
      return "SuperUser";
    }
  }

  Future<String> user_name({required String token}) async {
    http.Response response = await http.get(
      Uri.parse('https://coffee-app-systems.herokuapp.com/get-user/$token/'),
      headers: {"Authorization": "Token $token"},
    );

    if (response.statusCode == 200) {
      var users = UserNameAndRole.fromJson(jsonDecode(response.body));
      return users.user!;
    } else {
      return "SuperUser";
    }
  }

  Future<dynamic> shop_id(
      {required String token, required String shopName}) async {
    http.Response response = await http.get(
      Uri.parse(
          'https://coffee-app-systems.herokuapp.com/get-shop-name/$shopName/'),
      headers: {"Authorization": "Token $token"},
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
