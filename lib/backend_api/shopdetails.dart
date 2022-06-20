import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/api_data_model/get_shops_model.dart';
import 'dart:convert';

import 'package:versity_project_coffee/database/userBoxController.dart';

class ShopDetail{
  String token = UserBoxController().token;

  Future<dynamic> get_all_shop_details()async{
    
    http.Response response = await http.get(Uri.parse('https://coffee-app-systems.herokuapp.com/get-shop-name/'),
    headers: {
      "Authorization": "Token $token"
    });
    if(response.statusCode == 200){
      var shopsdetails = GetAllShopModel.fromJson(jsonDecode(response.body));
      return shopsdetails;
    }else{
      return 'failed action';
    }
  }

  Future<dynamic> get_a_shop_details({required String shopName})async{

    http.Response response = await http.get(Uri.parse('https://coffee-app-systems.herokuapp.com/get-shop-name/$shopName/'),
    headers: {
      "Authorization": "Token $token"
    });
    if(response.statusCode == 200){
      var shopdetails = ShopsDetails.fromJson(jsonDecode(response.body));
      return shopdetails;
    }else{
      return 'failed action';
    }
  }
}