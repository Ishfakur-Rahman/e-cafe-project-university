import 'package:hive/hive.dart';

class UserBoxController {
  late final Box<String> box;

  void hiveInit() async {
    await Hive.openBox<String>("token");
  }

  static Box<String> getToken() => Hive.box<String>('token');

  void addToken(String token) async {
    box = getToken();
    await box.add(token);
  }

  void delToken() async {
    box = getToken();
    await box.clear();
  }
}
