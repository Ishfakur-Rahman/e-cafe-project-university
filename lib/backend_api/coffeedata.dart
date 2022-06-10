import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../api_data_model/get_coffee_model.dart';
import '../api_data_model/get_single_coffee_model.dart';

class CoffeeData {
  late String buyerName; //TODO: shared preferences theke eitao newa laghbe
  late String token; //TODO: Change the data type to shared preferences
  //TODO: mane tui shared preference theke send korbi then coffee data server e patano jabe else jabe na

  Future<bool> addCoffee({
    required String coffeeType,
    required String coffeeTaste,
    required String coffeeName,
    required String coffeeShopName,
    required String description,
    required String price,
    required File? imagefile,
  }) async {
    http.Response response = await http.post(
        Uri.parse('https://coffee-app-system.herokuapp.com/add-coffee/'),
        body: {
          "name": "$coffeeName",
          "img": imagefile,
          "ratings": "No ratings",
          "taste": "$coffeeTaste",
          "coffeeType": "$coffeeType",
          "description": '$description',
          "price": "$price",
          "shopName": "$coffeeShopName",
          "user": "$buyerName"
        },
        headers: {
          "Authorization": "Token $token"
        });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> update_coffee_data({
    required String coffee_id,
    String? name,
    File? image,
    String? ratings,
    String? taste,
    String? coffeeType,
    String? description,
    String? price,
  }) async {
    http.Response response = await http.patch(
        Uri.parse(
            'https://coffee-app-system.herokuapp.com/update-coffee/$coffee_id/'),
        headers: {
          "Authorization": "Token $token"
        },
        body: {
          "name": "$name",
          "image": "$image",
          "ratings": "$ratings",
          "taste": "$taste",
          "coffeeType": "$coffeeType",
          "description": "$description",
          "price": "$price",
          "user": "$name"
        });
    //is any of the field in this json is null then it doesn't upload the value.by postman
    //testing would visualize the action in real time using
  }

  Future<GetSingleCoffeeModel> get_a_coffe({
    required String coffee_id,
  }) async {
    http.Response response = await http.get(
        Uri.parse(
            'https://coffee-app-system.herokuapp.com/update-coffee/$coffee_id/'),
        headers: {"Authorization": "Token $token"});
    var a_coffee = GetSingleCoffeeModel.fromJson(jsonDecode(response.body));
    return a_coffee;
  }

  Future get_all_coffee() async {
    http.Response response = await http.get(
        Uri.parse('https://coffee-app-system.herokuapp.com/get-coffee/'),
        headers: {"Authorization": "Token $token"});
    var coffees = GetAllCoffeeModel.fromJson(jsonDecode(response.body));
    return coffees;
  }
}
