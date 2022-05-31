import 'package:flutter/cupertino.dart';
import 'package:versity_project_coffee/backend_api/coffeedata.dart';
import 'package:versity_project_coffee/backend_api/loginauthentication.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
// import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/bottom_page.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/sellerPage.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/get/userAccountController.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/RegisterPage.dart';
import 'package:versity_project_coffee/maha/widgets/background-image.dart';

import '../../../../bottom_page.dart';

late String email;
late String password;

class LogInPages extends StatelessWidget {
  const LogInPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctx = Get.put(context);
    return Stack(
      children: [
        const BackgroundImage(
          assetImage: AssetImage('asset/coffee cup.png'),
          blendMode: BlendMode.darken,
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                LogInForm(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LogInForm extends StatelessWidget {
  const LogInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 15.0, vertical: size.height * 0.17),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            CoffeeSvg(),
            SizedBox(
              height: 10,
            ),
            MText(
              "E - Cafe",
              color: Colors.white,
            ).heading1(),
            Divider(
              height: 10,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            EmailField(),
            SizedBox(
              height: 17,
            ),
            PassWordField(),
            // FlutterPwValidator(width: MediaQuery.of(context).size.width, height: 100, minLength: 6, onSuccess: (){}, controller: PassWordField().showPass.pwdController.value),
            SizedBox(
              height: 30,
            ),
            RegisterRouter(),
            SizedBox(
              height: 20,
            ),
            LogInButton()
          ],
        ),
      ),
    );
  }
}

class PassWordField extends StatelessWidget {
  var showPass = Get.put(UserAccountControllerService());
  PassWordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextField(
          controller: showPass.pwdController.value,
          style: TextStyle(color: MColors.primaryColorDark, fontSize: 20),
          obscureText: showPass.eyePressed.value,
          decoration: InputDecoration(
              // contentPadding: EdgeInsets.all(8),
              labelText: "Password",
              labelStyle: TextStyle(color: MColors.primaryColorDark),
              filled: true,
              fillColor: Color.fromARGB(255, 253, 175, 96).withOpacity(0.7),
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              prefixIcon: Icon(
                Iconsax.lock,
                color: MColors.primaryColorDark,
              ),
              suffix: IconButton(
                  constraints: BoxConstraints(),
                  splashRadius: 25,
                  padding: EdgeInsets.zero,
                  icon: Icon(showPass.eyePressed.value
                      ? Iconsax.eye
                      : Iconsax.eye_slash),
                  onPressed: () {
                    showPass.eyePressed.value = !showPass.eyePressed.value;
                  })),
          cursorColor: MColors.primaryColorDark,
          onChanged: (value) {
            password = value;
          },
        ));
  }
}

class LogInButton extends StatelessWidget {
  var _existUser;
  var message;
  var token;

  Future<bool> loginAuthentications() async {
    //ishfaks
    try {
      token = await Authentication().login_auth(email: email, password: password);
      //TODO: save this token in shared preferences.
      //TODO: shama korle janais
      return true;
    } catch (e) {
      message = "Failed to log in";
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ElevatedButton.icon(
        onPressed: () async {
          //TODO: shamama your work is to use animation for loading screen mines are for temporary
          if (email != null && password != null) {
            showDialog(
                //ishfaks
                context: context,
                builder: (BuildContext context) {
                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: MColors.primaryColorDark,
                      color: MColors.primaryColorLight,
                      strokeWidth: 3,
                    ),
                  );
                });

            //TODO: till this lines [From 160 Line] mone kore koris
            _existUser = await loginAuthentications(); //ishfaks
            if (GetUtils.isEmail(EmailField().emailAccountController.text)) {
              //Ishfaks
              if (_existUser == true) {
                var role = await Authentication().user_role(token: token);
                if (role == 'buyer') {
                  Get.off(() => BottomPage());
                } else {
                  Get.off(() => HomePage());
                }
              } else {
                SnackBar(
                  content: Text(message),
                );
              }
            }
          }
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
}

class RegisterRouter extends StatelessWidget {
  const RegisterRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 316) {
      return Column(
        children: [
          MText(
            "don't have an account?",
            color: Colors.white,
          ).textline1(),
          InkWell(
            child: MText(
              "Register now",
              color: Colors.blueAccent,
              decoration: TextDecoration.underline,
            ).heading2(),
            onTap: () {
              Get.to(() => RouteToRegister());
            },
          ),
        ],
      );
    }
    return Row(
      children: [
        Spacer(),
        MText(
          "don't have an account?",
          color: Colors.white,
        ).textline1(),
        SizedBox(
          width: 10,
        ),
        InkWell(
          child: MText(
            "Register now",
            color: Colors.orange,
            decoration: TextDecoration.underline,
          ).heading2(),
          onTap: () {
            Get.to(() => RouteToRegister());
          },
        ),
        Spacer()
      ],
    );
  }
}

class EmailField extends StatelessWidget {
  var emailAccountController =
      Get.put(UserAccountControllerService().emailController.value);
  EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailAccountController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: MColors.primaryColorDark, fontSize: 20),
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(
          color: MColors.primaryColorDark,
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 253, 175, 96).withOpacity(0.7),
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        prefixIcon: Icon(
          Iconsax.send_14,
          color: MColors.primaryColorDark,
        ),
      ),
      cursorColor: MColors.primaryColorDark,
      onChanged: (value) {
        email = value;
      },
    );
  }
}

class CoffeeSvg extends StatelessWidget {
  const CoffeeSvg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets.bottom == 0
          ? const EdgeInsets.only(top: 50)
          : EdgeInsets.all(0),
      child: SvgPicture.asset(
        "asset/coffeesvg.svg",
        width: 150,
      ),
    );
  }
}
