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
    int sizeNum = getSizeNum(model.size);
    await box.put(model.id+0.1*sizeNum, model);
  }

  void delCart(CartModel model) async {
    box = getCart();
    await box.delete(model.id+0.1*getSizeNum(model.size));
  }

  int getSizeNum(String size){
    if(size == "S") {
      return 0;
    } else if(size == "M") {
      return 1;
    } else {
      return 2;
    }
  }
}
