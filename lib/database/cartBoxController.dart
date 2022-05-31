import 'package:hive/hive.dart';

import 'cartModel.dart';

class CartBoxController {
  late final Box<CartModel> box;

  void hiveInit() async {
    Hive.registerAdapter(CartModelAdapter());
    await Hive.openBox<CartModel>("carts");
  }

  static Box<CartModel> getCart() => Hive.box<CartModel>('carts');

  void addCart(CartModel model) async {
    box = getCart();
    await box.put(model.id, model);
  }

  void delCart(int id) async {
    box = getCart();
    await box.delete(id);
  }
}
