import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:versity_project_coffee/api_data_model/get_shops_model.dart';
import 'package:versity_project_coffee/backend_api/addProfileInfo.dart';
import 'package:versity_project_coffee/maha/pallete.dart';
import 'package:versity_project_coffee/maha/widgets/widgets.dart';

import '../../backend_api/loginauthentication.dart';
import '../../backend_api/registrationhandling.dart';
import '../../bottom_page.dart';
import '../../database/userBoxController.dart';
import '../../features/homePage/presentation/pages/sellerPage.dart';

late String selectedUser = 'n';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String user = 'n';
  late String email = 'n';
  late String password = 'n';
  late String confirmedPassword = 'n';
  late String messages = 'n';
  Future<bool> registrationInAPI() async {
    try {
      var token = await RegistrationHelper().registrating(
        userName: user,
        password: password,
        userTypes: selectedUser,
        email: email,
      );
      var shopDetails;
      var shop;
      UserBoxController().addToken(token);
      UserBoxController().addUserName(user);
      UserBoxController().addRole(selectedUser);
      if (selectedUser == 'seller') {
        shop =
            await Authentication().shop_id(token: token, shopName: user);
        shopDetails = ShopsDetails.fromJson(jsonDecode(shop));
        UserBoxController().addShopId(shopDetails.coffeeShopId as int);
      }
      await ProfileData().add_profile_data(
        userName: user,
        image: File('images/defaulprofile.jpg'),
        address: shopDetails.location,
      );
      return true;
    } catch (e) {
      messages = "Error";
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(
          assetImage: AssetImage('asset/coffee_bg.png'),
          blendMode: BlendMode.lighten,
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
                            child: Image.asset("images/logo.jpeg"),
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
                      hint: 'User Name',
                      inputType: TextInputType.name,
                      onChanged: (value) {
                        user = value;
                      },
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    const UserTypes(),
                    TextInputField(
                      icon: FontAwesomeIcons.eye,
                      hint: 'Password',
                      inputType: TextInputType.visiblePassword,
                      isPassword: true,
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.key,
                      hint: 'Confirm Password',
                      isPassword: true,
                      onChanged: (value) {
                        confirmedPassword = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // buttonWidget(),
                    RoundedButton(
                      buttonName: 'Register',
                      onPressed: () async {
                        if (password == confirmedPassword &&
                            password.isNotEmpty) {
                          BuildContext? dialogContext;
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              dialogContext = context;
                              return Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              );
                            },
                            barrierDismissible: false,
                          );

                          var status = await registrationInAPI();

                          if (status == true) {
                            Navigator.pop(dialogContext!);
                            if (selectedUser == 'buyer') {
                              Get.offAll(() => BottomPage());
                            } else if (selectedUser == 'seller') {
                              Get.offAll(() => HomePage());
                            }
                          } else {
                            Get.snackbar("Error",
                                "Something went wrong. Please try again",
                                colorText: Colors.red);
                            Navigator.pop(dialogContext!);
                          }
                        } else {
                          Get.snackbar(
                              "Error", "Something went wrong. Please try again",
                              colorText: Colors.red);
                        }
                      },
                    ),
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

enum UserTypesSelect { Buyer, Seller, Select }

class UserTypes extends StatefulWidget {
  const UserTypes({Key? key}) : super(key: key);

  @override
  _UserTypesState createState() => _UserTypesState();
}

class _UserTypesState extends State<UserTypes> {
  UserTypesSelect? _character = UserTypesSelect.Select;

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
                  _character == UserTypesSelect.Select
                      ? 'Select...'
                      : (_character == UserTypesSelect.Buyer
                          ? 'Shopping'
                          : 'Selling'),
                  style: kBodyText,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  _character == UserTypesSelect.Select
                      ? Icons.add
                      : (_character == UserTypesSelect.Buyer
                          ? Icons.shopping_cart
                          : Icons.storefront),
                  color: _character == UserTypesSelect.Seller
                      ? Colors.teal
                      : (_character == UserTypesSelect.Buyer
                          ? Colors.blue
                          : Colors.transparent),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            trailing: PopupMenuButton(
              enabled: true,
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
                  value == UserTypesSelect.Buyer
                      ? selectedUser = 'buyer'
                      : (value == UserTypesSelect.Seller
                          ? selectedUser = 'seller'
                          : selectedUser = 'none');
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<UserTypesSelect>>[
                PopupMenuItem<UserTypesSelect>(
                  value: UserTypesSelect.Select,
                  child: listTile(
                      Colors.black, 'Select...', UserTypesSelect.Select),
                ),
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
