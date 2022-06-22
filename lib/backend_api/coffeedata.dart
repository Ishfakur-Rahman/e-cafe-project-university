import 'dart:io';
import 'package:http/http.dart' as http;
import '../database/userBoxController.dart';

class CoffeeData {

  late int coffeeShopName;
  late String sellerName;
  late String token;

  Future<bool> addCoffee({
    required String coffeeType,
    required String coffeeTaste,
    required String coffeeName,
    required String description,
    required int price,
    required File? imagefile,
  }) async {

    token = UserBoxController().token;
    sellerName = UserBoxController().userName;
    coffeeShopName= UserBoxController().shopId;

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

    token = UserBoxController().token;
    sellerName = UserBoxController().userName;
    coffeeShopName= UserBoxController().shopId;

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

  Future<dynamic> get_a_coffe({
    required String coffee_id,
  }) async {
    token = UserBoxController().token;
    http.Response response = await http.get(
        Uri.parse(
            'https://coffee-app-systems.herokuapp.com/update-coffee/$coffee_id/'),
        headers: {"Authorization": "Token $token"});
    return response.body;
  }

  Future<dynamic> get_all_coffee() async {
    token = UserBoxController().token;
    http.Response response = await http.get(
        Uri.parse('https://coffee-app-systems.herokuapp.com/get-coffee/'),
        headers: {"Authorization": "Token $token"});
    return response.body;
  }
}
