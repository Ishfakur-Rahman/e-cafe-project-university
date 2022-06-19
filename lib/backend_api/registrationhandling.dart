import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:versity_project_coffee/api_data_model/model.dart';
import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/database/userBoxController.dart';

class RegistrationHelper {
  Future<String> registrating(
      {required String userName,
      required String email,
      required String password,
      required String userTypes}) async {
    http.Response response = await http.post(
      Uri.parse('https://coffee-app-systems.herokuapp.com/register/'),
      body: {
        "name": userName,
        "email": email,
        "username": userName,
        "password": password,
        "role": userTypes
      },
    );
    if (response.statusCode == 200) {
      var result = Token.fromJson(jsonDecode(response.body));
      return result.token!;
    } else {
      return "failed to register";
    }
  }

  Future<String> update_profile_info({
    String? user,
    FileImage? image,
    int? contact,
    String? address,
    int? shop_name,
  }) async {
    String token = UserBoxController().token;
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-systems.herokuapp.com/profile-info/'),
        headers: {
          "Authorization": "Token $token"
        },
        body: {
          "user": user,
          "profile": image,
          "contact": contact,
          "address": address,
          "shopName": shop_name
        });
    if (response.statusCode == 200) {
      return 'done';
    } else {
      return 'The action couldn\'t be done';
    }
  }
}
