import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/api_data_model/get_order_model.dart';

import '../database/userBoxController.dart';

class Order {
  var token = UserBoxController().token;
  var user_name = UserBoxController().userName;
  
  Future<List<AllOrders>?> get_all_order() async {
    http.Response response = await http.get(
        Uri.parse('https://coffee-app-systems.herokuapp.com/get-order/'),
        headers: {"Authorization": "Token $token"});

    var order = GetAllOrderDataModel.fromJson(jsonDecode(response.body));
    return order.allOrders;
  }

  Future<bool> place_order(String coffeeId, String coffeeName, String size,
      int quantity, String address, String contact, int shopName) async {
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-systems.herokuapp.com/make-order/'),
        headers: {
          "Authorization": "Token $token"
        },
        body: {
          "name": coffeeName,
          "size": size,
          "quantity": quantity,
          "address": address,
          "contact": contact,
          "user": user_name,
          "coffee_id": coffeeId,
          "shop_name": shopName
        });
    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }

  Future<String> order_delivered(String order_id) async {
    http.Response response = await http.delete(
        Uri.parse(
            'https://coffee-app-systems.herokuapp.com/delete-order/$order_id/'),
        headers: {"Authorization": "Token $token"});
    var message = jsonDecode(response.body);
    if(response.statusCode == 200){
      return message['response'];
    }else{
      return 'failed to complete the action';
    }
  }
}
