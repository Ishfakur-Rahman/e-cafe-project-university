import 'package:flutter/material.dart';
import 'package:versity_project_coffee/firebase_handling/registrationhandling.dart';
import '../pallete.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/homePage.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    Key? key,
    required this.buttonName,
    required this.user,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.userType,
  }) : super(key: key);

  final String buttonName;
  final String user;
  final String email;
  final String password;
  final String confirmPassword;
  final String userType;
  late String messages = ' ';

  Future<bool> registrationInFirebase() async {
    try {
      var canbe = await RegistrationHelper(
        userName: user,
        password: password,
        userTypes: userType,
        email: email,
      ).registratingUser();
      return canbe;
    } catch (e) {
      messages = 'Cound\'t registered';
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: kBrown,
        borderRadius: BorderRadius.circular(16),
        elevation: 5,
        child: MaterialButton(
          minWidth: size.width * 0.6,
          height: size.height * 0.06,
          onPressed: () async {
            if (password == confirmPassword && password != 'n') {
              showDialog(context: context, builder: (BuildContext context){
                return Center(child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),);
              });
              var status = await registrationInFirebase();
              if(status==true){
                Get.off(() => HomePage());
              }
            } else {
              messages = 'Your password doesn\'t matched';
            }
          },
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
