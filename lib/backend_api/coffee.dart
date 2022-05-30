import 'package:http/http.dart' as http;
import 'package:versity_project_coffee/backend_api/model.dart';
import 'dart:convert';

class GetCoffee {
  // late String token; //TOOD: change it to shared preferences
  Future all_coffee() async {
    http.Response response = await http.get(
      Uri.parse('https://coffee-app-system.herokuapp.com/get-coffee/'),
      headers:{
        "Authorization": "Token e5e6f8876e00dbdc385682b9f1d9948d5f83ecd3"
      }
    );
    var coffees = GetCoffeeModel.fromJson(jsonDecode(response.body)).coffee;
    print(coffees![0].name);//This is the way data returns
  }
}
