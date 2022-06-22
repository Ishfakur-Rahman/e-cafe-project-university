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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              itemBuilder: (build, context) => ItemViewer(),
              separatorBuilder: (build, context) => SizedBox(
                    height: 7,
                  ),
              itemCount: 10),
        ],
      ),
    );
  }
}

class EarnedMoney extends StatelessWidget {
  const EarnedMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      MText("Today").text2(),
                      MText("\$0.00",
                              color: MColors.yellow,
                              fontWeight: FontWeight.w200)
                          .heading1(),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MText("Total").text2(),
                      MText("\$0.00",
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
    return Row(
      children: [
        Icon(Iconsax.star1, color: MColors.yellow, size: 30),
        Icon(Iconsax.star1, color: MColors.primaryColorDark, size: 30),
        Icon(Iconsax.star1, color: MColors.primaryColorDark, size: 30),
        Icon(Iconsax.star1, color: MColors.primaryColorDark, size: 30),
        Icon(Iconsax.star1, color: MColors.primaryColorDark, size: 30),
        SizedBox(
          width: 10,
        ),
        MText("1/5").text2(),
      ],
    );
  }
}

class ItemViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomePageController ctrl = Get.put(HomePageController());
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
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "asset/coffee_bg.png",
                        ),
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
                      const Text(
                        "Jamaican Blue Mountain",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        "Blue Mountain coffee",
                        style: TextStyle(
                          color: Color(0xffaeaeae),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "\$\t",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd17842),
                                ),
                              ),
                              Text(
                                "4.20",
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
              children: const [
                Icon(
                  Icons.star,
                  size: 15,
                  color: Color(0xffd17842),
                ),
                Text(
                  "4.5",
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
  List<CoffeeModel> listofcoffee = [];
  void onInit() async {
    var coffee = CoffeeDataLocal();
    super.onInit();
    listofcoffee = await coffee.create_list();
  }

  RxList<CoffeeModel> get allCoffeeList => listofcoffee
      .where((coffee) => (coffee.coffeeShopId == UserBoxController().shopId))
      .toList()
      .obs;

  Rx<int> getCoffeeId(int index) {
    return allCoffeeList[index].coffeeShopId.obs;
  }
}
