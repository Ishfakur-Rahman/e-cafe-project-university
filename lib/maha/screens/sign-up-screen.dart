import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:versity_project_coffee/maha/pallete.dart';
import 'package:versity_project_coffee/maha/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          boxDecoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/coffee cup.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey[400]!.withOpacity(
                              0.4,
                            ),
                            child: Icon(
                              FontAwesomeIcons.user,
                              color: kBrown,
                              size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'User',
                      inputType: TextInputType.name,
                      // inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      // inputAction: TextInputAction.next,
                    ),
                    const UserTypes(),
                    TextInputField(
                      icon: FontAwesomeIcons.eye,
                      hint: 'Password',
                      // inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.key,
                      hint: 'Confirm Password',
                      inputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const RoundedButton(buttonName: 'Register'),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: kBodyText,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Login',
                            style: kBodyText.copyWith(
                              color: Colors.orange,
                              fontSize: 20.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

enum UserTypesSelect { Buyer, Seller }

class UserTypes extends StatefulWidget {
  const UserTypes({Key? key}) : super(key: key);

  @override
  _UserTypesState createState() => _UserTypesState();
}

class _UserTypesState extends State<UserTypes> {
  UserTypesSelect? _character = UserTypesSelect.Buyer;

  Widget listTile(Color color, String text, UserTypesSelect user) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      leading: _character == user
          ? Icon(
              Icons.radio_button_checked,
              color: Colors.blue,
            )
          : Icon(
              Icons.radio_button_off,
              color: Colors.blueGrey,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Expanded(
        child: Container(
          height: size.height * 0.07,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.grey[500]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: Icon(
              Icons.group,
              color: kBrown,
            ),
            horizontalTitleGap: 0.0,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _character == UserTypesSelect.Buyer ? 'Shopping' : 'Selling',
                  style: kBodyText,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  _character == UserTypesSelect.Buyer
                      ? Icons.shopping_cart
                      : Icons.storefront,
                  color: _character == UserTypesSelect.Buyer
                      ? Colors.blue
                      : Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            trailing: PopupMenuButton(
              color: Colors.grey[700],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Select Category',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.white,
                    size: 17.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              onSelected: (UserTypesSelect value) {
                setState(() {
                  _character = value;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<UserTypesSelect>>[
                PopupMenuItem<UserTypesSelect>(
                  value: UserTypesSelect.Buyer,
                  child:
                      listTile(Colors.black, 'Shopping', UserTypesSelect.Buyer),
                ),
                PopupMenuItem<UserTypesSelect>(
                  value: UserTypesSelect.Seller,
                  child:
                      listTile(Colors.black, 'Selling', UserTypesSelect.Seller),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
