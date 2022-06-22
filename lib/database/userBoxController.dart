import 'package:hive/hive.dart';

class UserBoxController {
  late final Box<String> box;

  void hiveInit() async {
    await Hive.openBox<String>("token");
  }

  static Box<String> getBox() => Hive.box<String>('token');

  void addToken(String token) async {
    box = getBox();
    await box.put("token", token);
    print("addToken");
  }

  String get token => getBox().get("token")!;

  void addRole(String role) async {
    box = getBox();
    await box.put("role", role);
    print("addRole");
  }

  String get role => getBox().get("role")!;

  void addUserName(String userName) async {
    box = getBox();
    await box.put("userName", userName);
    print("addUserName");
  }

  String get userName => getBox().get("userName")!;

  void addShopId(int shopId) async {
    box = getBox();
    await box.put("shopId", shopId.toString());
    print("ShopID");
  }

  int get shopId => int.parse(getBox().get("shopId")!);

  void delUser() async {
    box = getBox();
    await box.clear();
  }
}
