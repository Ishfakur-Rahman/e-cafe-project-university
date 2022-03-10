// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/homePage.dart';
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

  Padding loginForm() {
    return Padding(
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
            SizedBox(
              height: 20,
            ),
            emailField(),
            SizedBox(
              height: 13,
            ),
            SizedBox(
              height: 5,
            ),
            PassWordField(),
            Spacer(),
            registerRouter(),
            SizedBox(
              height: 20,
            ),
            logInButton()
          ],
        ),
      ),
    );
  }

  Container logInButton() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ElevatedButton.icon(
        onPressed: () {
          Get.to(() => HomePage());
        },
        icon: Icon(Iconsax.login), //icon data for elevated button
        label: MText(
          "Log In",
        ).text(), //label text
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            primary: MColors.primaryColor //elevated btton background color
            ),
      ),
    );
  }

  Row registerRouter() {
    return Row(
      children: [
        Spacer(),
        MText("don't have an account?").text(),
        SizedBox(
          width: 10,
        ),
        InkWell(
          child: MText("Register now", color: MColors.primaryColor).text(),
          onTap: () {
            Get.to(() => HomePage());
          },
        ),
        Spacer()
      ],
    );
  }

  TextField emailField() {
    return TextField(
      style: TextStyle(color: MColors.primaryColorDark),
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(color: MColors.primaryColorDark.withOpacity(.7)),
        filled: true,
        fillColor: Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        prefixIcon: Icon(
          Iconsax.message,
          color: MColors.primaryColorDark,
        ),
      ),
      cursorColor: MColors.primaryColorDark,
    );
  }

  Container coffeeSvg() {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SvgPicture.asset(
              "lib/Asset/illustration/coffeesvg.svg",
              width: 150,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          coffeeSvg(),
          loginForm(),
        ],
      ),
    );
  }
}

class PassWordField extends StatelessWidget {
  const PassWordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _showPass = Get.put(UserAccountController());
    return Obx(() => TextField(
          style: TextStyle(color: MColors.primaryColorDark),
          obscureText: _showPass.eyePressed.value,
          decoration: InputDecoration(
              labelText: "Password",
              labelStyle:
                  TextStyle(color: MColors.primaryColorDark.withOpacity(.7)),
              filled: true,
              fillColor: Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
              border: UnderlineInputBorder(
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
                  icon: Icon(_showPass.eyePressed.value
                      ? Iconsax.eye
                      : Iconsax.eye_slash),
                  onPressed: () {
                    _showPass.eyePressed.value = !_showPass.eyePressed.value;
                  })),
          cursorColor: MColors.primaryColorDark,
        ));
  }
}
