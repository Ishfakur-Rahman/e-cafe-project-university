import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/homePage/presentation/get/homeControllerServices.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';

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
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rating = Get.put(HomeControllerService());
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Hero(
                transitionOnUserGestures: true,
                tag: RegisterRouter(),
                child: Container(
                  height: 100,
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
                        Icon(
                          Iconsax.image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MText("coffee $index").heading3(),
                        Badge(
                          padding: EdgeInsets.all(2),
                          badgeColor: MColors.pink,
                          shape: BadgeShape.square,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          toAnimate: true,
                          badgeContent: MText(
                            coffe_types[Random().nextInt(coffe_types.length)],
                            fontSize: 1,
                          ).text(),
                        ),
                        MText(
                          "Market $index",
                          fontSize: 12,
                        ).text(),
                        Obx(() => SmoothStarRating(
                              size: 15,
                              color: MColors.primaryColorLight,
                              rating: rating.rating,
                              onRatingChanged: (value) {
                                // print(value);
                                rating.rating = value;
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ));
  }
}
