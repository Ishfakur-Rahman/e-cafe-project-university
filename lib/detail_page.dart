import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:versity_project_coffee/bottom_page.dart';
import 'database/cartBoxController.dart';
import 'database/cartModel.dart';
import 'database/coffeeModel.dart';
import 'database/userBoxController.dart';
import 'home_page.dart';
import 'dart:ui';

class DetailPage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;
  SHomePageController ctrl = Get.put(SHomePageController());
  final CoffeeModel model;
  final int id;
  DetailPage({required this.model, required this.id});
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    DetailPageController ctrl = Get.put(DetailPageController());
    return Scaffold(
      backgroundColor: const Color(0xff0c0f14),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://coffee-app-systems.herokuapp.com${model.image}/",
                                headers: {
                                  "Authorization":
                                      "Token ${UserBoxController().token}"
                                })),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 10.0,
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                width: double.infinity,
                                height: screenHeight * 0.2 - 20,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xff311d18).withOpacity(0.6),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    model.title,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    model.subTitle,
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Color(0xffaeaeae),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(
                                                      0xffd17842,
                                                    ),
                                                  ),
                                                  Text(
                                                    model.rating.toString() +
                                                        "\t",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 40.0,
                                                    width: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xff141921),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10.0,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: const Text(
                                                        "Coffee",
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                              Color(0xffaeaeae),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40.0,
                                                    width: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xff141921),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10.0,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: const Text(
                                                        "Milk",
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                              Color(0xffaeaeae),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              MaterialButton(
                                                minWidth: 120,
                                                onPressed: () {},
                                                color: const Color(0xff101419),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                ),
                                                child: const Text(
                                                  "Medicum Roasted",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xffaeaeae),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: const Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 20,
                                color: Color(0xffaeaeae),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BottomPage()));
                              },
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: const Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite,
                                size: 20,
                                color: Color(0xffaeaeae),
                              ),
                              onPressed: () {
                                
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffaeaeae),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            model.description,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: const [
                              Text(
                                "primarily from espresso and milk",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "...Read more",
                                style: TextStyle(
                                  color: Color(0xffb25e2b),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffaeaeae),
                        ),
                      ),
                      Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  ctrl.toggleSize("S");
                                },
                                color: ctrl.s.value
                                    ? Color(0xffb25e2b)
                                    : const Color(0xff141921),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    color: ctrl.s.isFalse
                                        ? Color(0xffb86b3c)
                                        : Color(0xff141921),
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  ctrl.toggleSize("M");
                                },
                                color: ctrl.m.value
                                    ? Color(0xffb25e2b)
                                    : const Color(0xff141921),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                    color: ctrl.m.isFalse
                                        ? Color(0xffb86b3c)
                                        : Color(0xff141921),
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  ctrl.toggleSize("L");
                                },
                                color: ctrl.l.isTrue
                                    ? Color(0xffb25e2b)
                                    : const Color(0xff141921),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "L",
                                  style: TextStyle(
                                    color: ctrl.l.isFalse
                                        ? Color(0xffb86b3c)
                                        : Color(0xff141921),
                                  ),
                                ),
                              )
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                  color: Color(0xffaeaeae),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$\t",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffd17842),
                                    ),
                                  ),
                                  Obx(() => Text(
                                        (model.price *
                                                (ctrl.s.isTrue
                                                    ? 0.9
                                                    : ctrl.m.isTrue
                                                        ? 1
                                                        : 1.05))
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                          MaterialButton(
                            onPressed: () {
                              ctrl.addCart(
                                  id: id,
                                  images: model.image,
                                  title: model.title,
                                  subTitle: model.subTitle,
                                  price: model.price,
                                  rating: model.rating);
                            },
                            height: 55,
                            minWidth: 200,
                            color: const Color(0xffd17842),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              "Add to cart now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPageController extends GetxController {
  Rx<bool> s = false.obs;
  Rx<bool> m = true.obs;
  Rx<bool> l = false.obs;

  toggleSize(String size) {
    s.value = (size == 'S');
    m.value = (size == 'M');
    l.value = (size == 'L');
  }

  get size => s.value
      ? 'S'
      : m.value
          ? 'M'
          : 'L';
  makeFovoirite(String id){
    
  }

  void addCart(
      {required int id,
      required String images,
      required String title,
      required String subTitle,
      required int price,
      required String rating,
      size}) {
    final cart = CartModel(
      id: id,
      name: title,
      shopName: subTitle,
      size: this.size,
      price: (price *
              (size == "S"
                  ? 0.5
                  : size == "M"
                      ? 1
                      : 2))
          .toString(),
      ratings: rating.toString(),
      image: images,
    );
    CartBoxController().addCart(cart, cart.id);
  }
}
