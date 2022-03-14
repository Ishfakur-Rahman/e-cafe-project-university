// ignore_for_file: file_names, constant_identifier_names

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/homePage/presentation/get/homeControllerServices.dart';

const List<String> coffe_types = [
  "Americano",
  "Black Coffee",
  "Cappuccino",
  "Espresso",
  "Latte",
  "Macchiato",
  "Mocha",
  "Cold Coffee Variety",
  "Affogato",
  "Cold Brew",
  "Frappuccino",
  "Iced Coffee",
  "Mazagran",
  "Iced latte",
  "Nitro cold Brew"
]; //NOTE: Just a note

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var homeController = Get.put(HomeControllerService());
    return const Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: RecomendedCoffeeLists(),
      ),
    ));
  }
}

class RecomendedCoffeeLists extends StatelessWidget {
  const RecomendedCoffeeLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GetX<HomeControllerService>(builder: (controller) {
        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.coffee.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 300,
              width: 200,
              alignment: Alignment.topLeft,
              // color: MColors.backgroundColor,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: MColors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Iconsax.image,
                    ), //TODO: please add image here
                    const SizedBox(
                      height: 10,
                    ),
                    MText(controller.coffee[index].name).heading3(),
                    Badge(
                      padding: const EdgeInsets.all(2),
                      badgeColor: MColors.pink,
                      shape: BadgeShape.square,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      toAnimate: true,
                      badgeContent: MText(
                        controller.coffee[index].type,
                        fontSize: 1,
                      ).text(),
                    ),
                    MText(
                      controller.coffee[index].market,
                      fontSize: 12,
                    ).text(),
                    MText("\$" + controller.coffee[index].price.toString())
                        .heading3(),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
