// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/get/userAccountController.dart';

class LogInPages extends StatelessWidget {
  const LogInPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.backgroundColor,
      body: LogInCard(),
    );
  }
}

class LogInCard extends StatelessWidget {
  const LogInCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _showPass = Get.put(UserAccountController());

    return Center(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SvgPicture.asset(
                    "lib/Asset/illustration/coffeesvg.svg",
                    width: 200,
                  ),
                ),
              ],
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     colorFilter: ColorFilter.mode(
            //         Color.fromARGB(169, 14, 5, 4), BlendMode.overlay),
            //     image: AssetImage(
            //       "lib/Asset/Image/Sign up.png",
            //     ),
            //   ),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Spacer(
                    flex: 10,
                  ),
                  MText("E - Cafe").heading1(),
                  Divider(
                    height: 10,
                  ),
                  Container(child: MText("Email", color: MColors.primaryColorDark,).text(), alignment: Alignment.topLeft,),
                  SizedBox(height: 5,),
                  TextField(
                    style: TextStyle(color: MColors.primaryColorDark),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Iconsax.message,
                        color: MColors.primaryColorDark,
                      ),
                    ),
                    cursorColor: MColors.primaryColorDark,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(child: MText("Password", color: MColors.primaryColorDark,).text(), alignment: Alignment.topLeft,),
                  SizedBox(height: 5,),
                  Obx(() => TextField(
                    style: TextStyle(color: MColors.primaryColorDark),
                    obscureText: _showPass.eyePressed.value,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 199, 123, 24)
                          .withOpacity(0.7),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      
                      prefixIcon: Icon(
                        Iconsax.lock,
                        color: MColors.primaryColorDark,
                      ),
                      suffix: IconButton(
                          constraints: BoxConstraints(),
                          splashRadius: 25,
                          padding: EdgeInsets.zero,
                          icon: Icon(_showPass == true
                              ? Iconsax.eye
                              : Iconsax.eye_slash),
                          onPressed: () {
                            _showPass.eyePressed.value =
                                !_showPass.eyePressed.value;
                          })),
                  cursorColor: MColors.primaryColorDark,
                      )),
                  Spacer(),
                  Row(
                    children: [
                      Spacer(),
                      MText("don't have an account?").text(),
                      SizedBox(width: 20,),
                      InkWell(child: MText("Register now").text()),
                      Spacer()
                    ],
                  ),
                  Spacer(),
                  OutlinedButton(
                    // color: MColors.primaryColorLight.withOpacity(.2),
                    // splashColor: MColors.primaryColorLight.withOpacity(.5),
                    onPressed: (){}, child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 100),
                    child: MText("Log In",fontSize: 20, fontWeight: FontWeight.bold,color: MColors.primaryColorDark,).text(),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
