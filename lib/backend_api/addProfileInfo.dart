import 'dart:io';
import 'package:http/http.dart' as http;
import '../database/userBoxController.dart';

class ProfileData {
  final token = UserBoxController().token;
  final role = UserBoxController().role;
  final shopName = UserBoxController().shopId;
  Future<String> add_profile_data({
    String? userName,
    String? contact,
    String? address,
    required File image,
  }) async {
    print('image in');
    var stream = http.ByteStream(image.openRead());
    print('image');
    stream.cast();

    var length = await image.length();

    var uri =
        Uri.parse('https://coffee-app-systems.herokuapp.com/add-profile-info/');

    var request = http.MultipartRequest('POST', uri);

    request.headers['Authorization'] = "Token $token";

    request.fields['user'] = userName ?? "User";
    request.fields['contact'] = contact ?? "00000000000";
    request.fields['address'] = address ?? "put your address";
    request.fields['shopName'] =
        role == 'seller' ? shopName.toString() : (role == 'buyer' ? "0" : "");

    var multiport = http.MultipartFile('image', stream, length);

    request.files.add(multiport);

    var response = await request.send();
    // http.Response response = await http.post(
    //     Uri.parse('https://coffee-app-systems.herokuapp.com/profile-info/'),
    //     headers: {
    //       "Authorization": "Token $token"
    //     },
    //     body: role == 'buyer'?{
    //       {
    //         "user": userName,
    //         "profile": image,
    //         "contact": contact,
    //         "address": address,
    //         "shopName": shopName
    //       }
    //     }:{
    //       "user": userName,
    //       "profile": image,
    //       "contact": contact,
    //       "address": address,
    //       "shopName": 0
    //     });
    if (response.statusCode == 200) {
      print('added');
      return "Added";
    } else {
      print('not');
      return "Failed to add data";
    }
  }

  Future<String> update_profile_data({
    required String userName,
    String? contact,
    String? address,
    File? image,
  }) async {
    var stream;
    var length;

    if (image != null) {
      stream = http.ByteStream(image.openRead());
      stream.cast();
      length = await image.length();
    }

    var uri = Uri.parse(
        'https://coffee-app-systems.herokuapp.com/update-profile-info/$userName/');

    var request = http.MultipartRequest('PATCH', uri);

    request.headers['Authorization'] = "Token $token";

    contact != null ? (request.fields['contact'] = contact) : "";
    address != null ? (request.fields['address'] = address) : "";

    if (image != null) {
      var multiport = http.MultipartFile('image', stream, length);
      request.files.add(multiport);
    }
    var response = await request.send();
    // http.Response response = await http.post(
    //     Uri.parse('https://coffee-app-systems.herokuapp.com/profile-info/'),
    //     headers: {
    //       "Authorization": "Token $token"
    //     },
    //     body: role == 'buyer'?{
    //       {
    //         "user": userName,
    //         "profile": image,
    //         "contact": contact,
    //         "address": address,
    //         "shopName": shopName
    //       }
    //     }:{
    //       "user": userName,
    //       "profile": image,
    //       "contact": contact,
    //       "address": address,
    //       "shopName": 0
    //     });
    if (response.statusCode == 200) {
      return "Updated";
    } else {
      return "Failed to update data";
    }
  }

  Future<dynamic> get_profile() async {
    String userName = UserBoxController().userName;
    http.Response response = await http.get(
      Uri.parse(
          'https://coffee-app-systems.herokuapp.com/get-profile-info/$userName/'),
      headers: {"Authorization": "Token $token"},
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'error';
    }
  }
}
