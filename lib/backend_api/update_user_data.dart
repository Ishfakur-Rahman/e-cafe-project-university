import 'package:http/http.dart' as http;

class UserDataUpdate {
  String? token;
  Future update_accounts_data({
    String? userName,
    String? imageurl,
    String? contact,
    String? address,
    int? shopName,
  }) async {
    http.Response response = await http.patch(
        Uri.parse('https://coffee-app-system.herokuapp.com/profile-info/'),
        body: {
          {
            "user": "$userName",
            "profile": imageurl,
            "contact": "$contact",
            "address": "$address",
            "shopName": shopName
          }
        },
        headers: {
          "Authorization": "Token $token"
        });
    if (response.statusCode == 200) {
      return 'successfully done';
    } else {
      return 'failed to update user information';
    }
  }
}
