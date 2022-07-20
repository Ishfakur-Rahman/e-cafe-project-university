import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'backend_api/order_data.dart';
import 'database/cartBoxController.dart';
import 'database/cartModel.dart';
import 'database/userBoxController.dart';

class CartPage extends StatelessWidget {
  //TODO: this function
  void placeorder(List listoforderdata) async {
    for (var item in listoforderdata) {
      await Order().place_order(
          "coffeeId", "coffeeName", "size", 21, "address", "contact", 122131);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ValueListenableBuilder<Box<CartModel>>(
                valueListenable: CartBoxController.getCart().listenable(),
                builder: (context, box, _) {
                  List<CartModel> carts = box.values.toList();
                  // print();
                  return ListView.separated(
                    itemCount: carts.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 20);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return CartWidget(index: index, carts: carts);
                    },
                  );
                }),
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Colors.brown),
              onPressed: () async {
                //TODO: this line
                // await placeorder(Listofdata);
                CartBoxController().delAllCart();
              },
              icon: Icon(Icons.coffee),
              label: Text("Buy Now")),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  final int index;
  final List<CartModel> carts;

  const CartWidget({Key? key, required this.index, required this.carts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController ctrl = Get.put(CartController(index: index));
    String coffeeSize = carts[index].size;
    String title = carts[index].name;
    String subTitle = carts[index].shopName;
    String price = carts[index].price;
    String ratings = carts[index].ratings;
    String image = carts[index].image;
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: Get.height * 0.2 - 20,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff171b22),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    color: Color(0xff30221f),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://coffee-app-systems.herokuapp.com${image}/",
                      headers: {
                        "Authorization": "Token ${UserBoxController().token}"
                      }),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Color(0xffaeaeae),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$\t",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffd17842),
                          ),
                        ),
                        Text(
                          ratings,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffd17842)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Text(coffeeSize,
                            style: TextStyle(color: Colors.grey.shade400))),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            ctrl.decreament();
                          },
                          child: Text("-",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 50)),
                        ),
                        Text("  "),
                        Obx(() => Text(ctrl.count.value.toString(),
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 20))),
                        Text("  "),
                        GestureDetector(
                          onTap: () {
                            ctrl.increament();
                          },
                          child: Text("+",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 30)),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xffd17842),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          ctrl.delCart(carts[index]);
                        },
                        child: const Icon(Icons.delete,
                            size: 25, color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartController extends GetxController {
  final int index;

  late final String coffeeName;
  late final String shopeName;
  late final String ritings;
  late final String coffeeSize;
  final Rx<int> count = 1.obs;
  late final String price;

  CartController({required this.index});

  @override
  void onClose() {
    Hive.close();

    super.onClose();
  }

  void increament() {
    count.value++;
  }

  void decreament() {
    if (count.value != 0) {
      count.value--;
    }
  }

  void delCart(CartModel cart) {
    CartBoxController().delCart(cart);
  }
}
