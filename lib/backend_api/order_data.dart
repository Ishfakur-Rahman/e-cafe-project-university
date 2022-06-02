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

  Future place_order(
    String coffeeId,
      String coffeeName,
      String size,
      String quantity,
      String address,
      String contact
  ) async {
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
          "quantity": "$quantity",
          "address": "$address",
          "contact": "$contact"
        });
  }
}
