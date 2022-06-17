import 'dart:async';
import 'package:flutter/material.dart';
import 'package:versity_project_coffee/backend_api/registrationhandling.dart';
import 'package:versity_project_coffee/bottom_page.dart';
import '../../database/userBoxController.dart';
import '../pallete.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/sellerPage.dart';

class RoundedButton extends StatefulWidget {
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

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  late String messages = ' ';

  Future<bool> registrationInAPI() async {
    try {
      var token = await RegistrationHelper().registrating(
        userName: widget.user,
        password: widget.password,
        userTypes: widget.userType,
        email: widget.email,
      );
      print("token: " + token);
      UserBoxController().addToken(token);
      UserBoxController().addUserName(widget.user);
      UserBoxController().addRole(widget.userType);

      return false; //it was true
    } catch (e) {
      print(e.toString());
      messages = "Error";
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
          height: size.height * 0.07,
          onPressed: () async {
            
            if (widget.password == widget.confirmPassword && widget.password.isNotEmpty) {
              bool? status;
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    if(status==false){
                      Navigator.pop(context);
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    );
                  },
              barrierDismissible: false,
              );
              setState(() async{
                status = await registrationInAPI();
              });
              if (status == true) {
                if (widget.userType == 'buyer') {
                  Get.offAll(() => BottomPage());
                } else if (widget.userType == 'seller') {
                  Get.offAll(() => HomePage());
                }
              } else {
                print("Message: " + messages);
              }
            } else {
              print('Your password doesn\'t matched');
            }
            // Navigator.pop(context);
          },
          child: Text(
            widget.buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
