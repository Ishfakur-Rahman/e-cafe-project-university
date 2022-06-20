import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../api_data_model/get_coffee_model.dart';
import '../api_data_model/get_single_coffee_model.dart';
import '../database/userBoxController.dart';

class CoffeeData {
  int coffeeShopName = UserBoxController().shopId;
  String sellerName = UserBoxController().userName;
  String token = UserBoxController().token;
  Future<bool> addCoffee({
    required String coffeeType,
    required String coffeeTaste,
    required String coffeeName,
    required String description,
    required int price,
    required File? imagefile,
  }) async {
    var stream = http.ByteStream(imagefile!.openRead());
    stream.cast();

    var length = await imagefile.length();

    var uri = Uri.parse('https://coffee-app-systems.herokuapp.com/add-coffee/');

    var request = http.MultipartRequest('POST', uri);

    request.headers['Authorization'] = "Token $token";

    request.fields['name'] = coffeeName;
    request.fields['ratings'] = "0";
    request.fields['totalUser'] = "0";
    request.fields['taste'] = coffeeTaste;
    request.fields['coffeeType'] = coffeeType;
    request.fields['description'] = description;
    request.fields['price'] = "$price";
    request.fields['user'] = sellerName;
    request.fields['shopName'] = "$coffeeShopName";

    var multiport = http.MultipartFile('image', stream, length);

    request.files.add(multiport);

    var response = await request.send();
    // http.Response response = await http.post(
    //     Uri.parse('https://coffee-app-systems.herokuapp.com/add-coffee/'),
    //     body: {
    //       "name": coffeeName,
    //       "image": imagefile,
    //       "ratings": 0,
    //       "totalUser": 0,
    //       "taste": coffeeTaste,
    //       "coffeeType": coffeeType,
    //       "description": description,
    //       "price": price,
    //       "shopName": coffeeShopName,
    //       "user": sellerName
    //     },
    //     headers: {
    //       "Authorization": "Token $token"
    //     });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> update_coffee_data({
    required String coffee_id,
    String? name,
    File? image,
    int? ratings,
    int? total_users,
    String? taste,
    String? coffeeType,
    String? description,
    int? price,
  }) async {
    var response;
    var uri = Uri.parse(
        'https://coffee-app-systems.herokuapp.com/update-coffee/$coffee_id/');
    if (image != null) {
      var stream = http.ByteStream(image.openRead());
      stream.cast();

      var length = await image.length();

      var request = http.MultipartRequest('PATCH', uri);
      request.headers['Authorization'] = "Token $token";

      request.fields['name'] = name!;
      request.fields['ratings'] = ratings.toString();
      request.fields['totalUser'] = total_users.toString();
      request.fields['taste'] = taste!;
      request.fields['coffeeType'] = coffeeType!;
      request.fields['description'] = description!;
      request.fields['price'] = "$price";
      request.fields['user'] = name;

      var multiport = http.MultipartFile('image', stream, length);

      request.files.add(multiport);

      response = await request.send();
    } else {
      response = await http.patch(
          Uri.parse(
              'https://coffee-app-systems.herokuapp.com/update-coffee/$coffee_id/'),
          headers: {
            "Authorization": "Token $token"
          },
          body: {
            "name": name,
            "image": image,
            "ratings": ratings,
            "taste": taste,
            "coffeeType": coffeeType,
            "description": description,
            "price": price,
            "user": name
          });
    }

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future get_a_coffe({
    required String coffee_id,
  }) async {
    http.Response response = await http.get(
        Uri.parse(
            'https://coffee-app-systems.herokuapp.com/update-coffee/$coffee_id/'),
        headers: {"Authorization": "Token $token"});
    var a_coffee = GetSingleCoffeeModel.fromJson(jsonDecode(response.body));
    return a_coffee;
  }

  Future get_all_coffee() async {
    http.Response response = await http.get(
        Uri.parse('https://coffee-app-systems.herokuapp.com/get-coffee/'),
        headers: {"Authorization": "Token $token"});
    var coffees = GetAllCoffeeModel.fromJson(jsonDecode(response.body));
    return coffees;
  }
}
