import 'package:versity_project_coffee/FirebaseHandling/LoginAuthentication.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/homePage.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/get/userAccountController.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/RegisterPage.dart';

late String email;
late String password;

class LogInPages extends StatelessWidget {
  const LogInPages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MColors.backgroundColor,
      body: LogInForm(),
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
          style: TextStyle(color: MColors.primaryColorDark),
          obscureText: showPass.eyePressed.value,
          decoration: InputDecoration(
              // contentPadding: EdgeInsets.all(8),
              labelText: "Password",
              labelStyle:
                  TextStyle(color: MColors.primaryColorDark.withOpacity(.7)),
              filled: true,
              fillColor: Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
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

class LogInForm extends StatelessWidget {
  const LogInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CoffeSvg(),
          SizedBox(
            height: 10,
          ),
          MText("E - Cafe").heading1(),
          Divider(
            height: 10,
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
          Spacer(),
          RegisterRouter(),
          SizedBox(
            height: 20,
          ),
          LogInButton()
        ],
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  // const LogInButton({Key? key}) : super(key: key);
  var _existUser;
  var message;

  Future<bool> loginAuthentication() async {
    try {
      var _auth = Authentication(email: email, password: password);
      _existUser = await _auth.loginAuthentication();
      message = _auth.messages;
      return true;
    } catch (e) {
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
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                  ),
                );
              });
          //TODO: till this 167 lines [From 157 Line] mone kore koris
          var done = await loginAuthentication();
          if (GetUtils.isEmail(EmailField().emailAccountController.text)) {
            //Ishfaks
            if (_existUser == true) {
              Get.to(() => HomePage());
            } else {
              SnackBar(
                content: Text(message),
              );
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
          MText("don't have an account?").text(),
          InkWell(
            child: MText("Register now", color: MColors.primaryColor).text(),
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
        MText("don't have an account?").text(),
        SizedBox(
          width: 10,
        ),
        InkWell(
          child: MText("Register now", color: MColors.primaryColor).text(),
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
      style: TextStyle(color: MColors.primaryColorDark),
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(color: MColors.primaryColorDark.withOpacity(.7)),
        filled: true,
        fillColor: Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        prefixIcon: Icon(
          Iconsax.message,
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

class CoffeSvg extends StatelessWidget {
  const CoffeSvg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets.bottom == 0
          ? const EdgeInsets.only(top: 50)
          : EdgeInsets.all(0),
      child: SvgPicture.asset(
        "lib/Asset/illustration/coffeesvg.svg",
        alignment: Alignment.center,
        width: 150,
      ),
    );
  }
}
