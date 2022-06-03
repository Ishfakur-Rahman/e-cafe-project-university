import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/backend_api/get_order_model.dart';

class Order {
  var token;
  var user_name;
  Future get_all_order() async {
    http.Response response = await http.get(
        Uri.parse('https://coffee-app-system.herokuapp.com/get-order/'),
        headers: {"Authorization": "Token $token"});

    var order = GetOrderDataModel.fromJson(jsonDecode(response.body));
    return order.allOrders;
  }

  Future place_order(String coffeeId, String coffeeName, String size,
      int quantity, String address, String contact, String shopName) async {
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-system.herokuapp.com/make-order/'),
        headers: {
          "Authorization": "Token $token"
        },
        body: {
          "user": "$user_name",
          "coffee_id": "${coffeeId}",
          "name": "$coffeeName",
          "size": "$size",
          "quantity": quantity,
          "address": "$address",
          "contact": "$contact",
          "shop_name": "$shopName"
        });
  }

  Future order_delivered(String order_id) async {
    http.Response response = await http.delete(
        Uri.parse(
            'https://coffee-app-system.herokuapp.com/delete-order/$order_id/'),
        headers: {"Authorization": "Token $token"});
    var message = jsonDecode(response.body);
    print(message['response']);
  }
}
