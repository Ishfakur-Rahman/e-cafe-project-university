import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/api_data_model/get_coffee_model.dart';
import 'package:versity_project_coffee/backend_api/coffeedata.dart';
import 'package:versity_project_coffee/database/coffeeData.dart';
import 'package:versity_project_coffee/database/coffeeModel.dart';
import 'package:versity_project_coffee/database/userBoxController.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/addFormPage.dart';

import '../../../../database/cartBoxController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageController ctrl = Get.put(HomePageController());
    return SingleChildScrollView(
      child: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) ctrl.setData(snapshot.data);

          return Column(
            children: [
              EarnedMoney(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    MText("Your Products", color: MColors.yellow).heading1(),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.filter,
                          color: MColors.yellow,
                        ))
                  ],
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (build, id) => ItemViewer(id: id),
                separatorBuilder: (build, id) => SizedBox(
                  height: 7,
                ),
                itemCount: ctrl.listofcoffee.length,
              ),
            ],
          );
        },
        future: CoffeeDataLocal().create_list(),
      ),
    );
  }
}

class EarnedMoney extends StatelessWidget {
  const EarnedMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageController ctrl = Get.put(HomePageController());
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: MColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MText("Your Balance").coffeeText(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MText("Total").text2(),
                      MText(ctrl.getTotalBalance().toString(),
                              color: MColors.yellow,
                              fontWeight: FontWeight.w200)
                          .heading1(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              Spacer(),
              MText("Overall Rating:").coffeeText(),
              SizedBox(height: 10),
              Ratings(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomePageController ctrl = Get.put(HomePageController());
    return Row(
      children: [
        MText(ctrl.getTotalRating().toString()).text2(),
      ],
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
    HomePageController ctrl = Get.put(HomePageController());
    String name = ctrl.listofcoffee[id].id;
    String subTitle = ctrl.listofcoffee[id].subTitle;
    String image = ctrl.listofcoffee[id].image;
    String price = ctrl.listofcoffee[id].price.toString();
    String rating = ctrl.listofcoffee[id].rating;
    return GestureDetector(
      onTap: () async {
        var coffees = await CoffeeData().get_all_coffee();
        print(GetAllCoffeeModel.fromJson(jsonDecode(coffees)));
      },
      child: Stack(
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
      ),
    );
  }
}

class HomePageController extends GetxController {
  List<CoffeeModel> _listofcoffee = [];
  @override
  void onInit() async {
    super.onInit();
    update();
  }

  List<CoffeeModel> get listofcoffee => _listofcoffee
      .where((coffee) => (coffee.coffeeShopId == UserBoxController().shopId))
      .toList();

  getTotalBalance() {
    int sum = 0;
    for (CoffeeModel coffee in _listofcoffee) {
      sum += coffee.price;
    }
    return sum;
  }
  getTotalRating() {
    int sum = 0;
    for (CoffeeModel coffee in _listofcoffee) {
      sum += int.parse(coffee.rating);
    }
    return sum;
  }

  void setData(Object? data) {
    _listofcoffee = (data as List<CoffeeModel>);
  }
}
