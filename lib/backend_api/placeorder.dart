import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/backend_api/get_order_model.dart';

class Order {
  Future get_all_order(String token) async {
    http.Response response = await http.get(Uri.parse('https://coffee-app-system.herokuapp.com/get-order/'),
    headers: {
      "Authorization" : "Token $token"
    });

    var order = GetOrderDataModel.fromJson(jsonDecode(response.body));
    return order.allOrders;
  }
}
