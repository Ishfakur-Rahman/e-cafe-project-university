import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/api_data_model/get_order_model.dart';
import 'package:versity_project_coffee/backend_api/order_data.dart';
import 'package:versity_project_coffee/database/coffeeModel.dart';
import 'package:versity_project_coffee/database/userBoxController.dart';

import 'Theme/mColors.dart';
import 'Theme/mText.dart';

class OrderRequest extends StatelessWidget {
  Future<List<AllOrders>?> get_order() async {
    var order = await Order().get_all_order();
    var orders = GetAllOrderDataModel.fromJson(jsonDecode(order)).allOrders;
    List<AllOrders>? orderdata;
    for (var singleorder in orders!) {
      if (singleorder.shopName == UserBoxController().shopId) {
        orderdata?.add(singleorder);
      }
    }
    return orderdata;
  }

  @override
  Widget build(BuildContext context) {
    //TODO: example: orderdata[0].shopId; you have all the data in the list
    // List<AllOrders>? orderdata = await get_order();
    return SafeArea(
      child: FutureBuilder(
          future: get_order(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (build, id) => ItemViewer(id: id),
                    separatorBuilder: (build, id) => SizedBox(
                      height: 7,
                    ),
                    itemCount: 5,
                  )
                : Container();
          }),
    );
  }
}

class ItemViewer extends StatelessWidget {
  final int id;
  ItemViewer({
    Key? key,
    required this.id,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OrderRequestController ctrl = Get.put(OrderRequestController());
    String name = ctrl.listofcoffee[id].id;
    String subTitle = ctrl.listofcoffee[id].subTitle;
    String image = ctrl.listofcoffee[id].image;
    String price = ctrl.listofcoffee[id].price.toString();
    String rating = ctrl.listofcoffee[id].rating;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
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
                          'https://coffee-app-systems.herokuapp.com$image/',
                          headers: {
                            "Authorization":
                                "Token ${UserBoxController().token}"
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
                      name,
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
                              price,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 25.0,
          width: 50.0,
          decoration: const BoxDecoration(
            color: Color(0xff231715),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: Color(0xffd17842),
              ),
              Text(
                rating,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OrderRequestController extends GetxController {
  List<CoffeeModel> listofcoffee = [];
}
