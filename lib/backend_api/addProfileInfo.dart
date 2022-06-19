import 'dart:io';
import 'package:http/http.dart' as http;
import '../database/userBoxController.dart';

class ProfileData {
  final token = UserBoxController().token;
  final role = UserBoxController().role;
  final shopName = UserBoxController().shopId;
  Future<String> add_profile_data({
    String? userName,
    String? contact,
    String? address,
    File? image,
  }) async {
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-systems.herokuapp.com/profile-info/'),
        headers: {
          "Authorization": "Token $token"
        },
        body: role == 'buyer'?{
          {
            "user": userName,
            "profile": image,
            "contact": contact,
            "address": address,
            "shopName": shopName
          }
        }:{
          "user": userName,
          "profile": image,
          "contact": contact,
          "address": address,
          "shopName": 0
        });
    if(response.statusCode == 200){
      return "Updated";
    }else{
      return "Failed to update data";
    }
  }
}
