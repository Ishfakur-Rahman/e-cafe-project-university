import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/backend_api/model.dart';

class CoffeeData {
  late String buyerName; //TODO: shared preferences theke eitao newa laghbe
  late String token; //TODO: Change the data type to shared preferences
  //TODO: mane tui shared preference theke send korbi then coffee data server e patano jabe else jabe na

  Future<void> addCoffee({
    required String coffeeType,
    required String coffeeTaste,
    required String coffeeName,
    required String coffeeShopLocation,
    required String coffeeShopName,
    required String price,
    required String imageUrl,
  }) async {
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-system.herokuapp.com/add-coffee/'),
        body: {
          "name": coffeeName,
          "ratings": "No ratings",
          "taste": coffeeTaste,
          "coffeeType": coffeeType,
          "price": price,
          "img": imageUrl,
          "shopName": coffeeShopName,
          "coffeeShopID": "add coffeeshopid",
          "location": coffeeShopLocation,
          "user": buyerName
        },
        headers: {
          "Authorization": "Token $token"
        });
  }

  Future<void> getacoffee({
    required int coffee_id,
    required String ratings,
    required String total_users,
  }) async {
    http.Response response = await http.get(
      Uri.parse(
          'https://coffee-app-system.herokuapp.com/update-coffee/$coffee_id/'),
      headers: {
        "Authorization": "Token $token",
      },
    );
    if (response.statusCode == 200) {
      var coffee = GetSingleCoffeeItem.fromJson(jsonDecode(response.body));
      http.Response responses = await http.put(
        Uri.parse(
            'https://coffee-app-system.herokuapp.com/update-coffee/$coffee_id/'),
        body: {
          "name": coffee.name,
          "ratings": ratings,
          "taste": coffee.taste,
          "coffeeType": coffee.coffeeType,
          "price": coffee.price,
          "img": coffee.img,
          "shopName": coffee.shopName,
          "coffeeShopID": "add coffeeshopid",
          "location": coffee.location,
          "user": buyerName
        },
        headers: {"Authorization": "Token $token"},
      );
    }
  }

  Future get_all_coffee() async {
    http.Response response = await http.get(
        Uri.parse('https://coffee-app-system.herokuapp.com/get-coffee/'),
        headers: {
          "Authorization": "Token $token"
        });
    var coffees = GetCoffeeModel.fromJson(jsonDecode(response.body)).coffee;
    print(coffees![0].name); //This is the way data returns
  }
}
