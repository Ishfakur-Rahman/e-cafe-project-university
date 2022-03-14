import 'dart:ui';
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
        BackgroundImage(),
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
                    const TextInputField(
                      icon: FontAwesomeIcons.user,
                      hint: 'User',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    const UserTypes(),
                    const PasswordInput(
                      icon: FontAwesomeIcons.eye,
                      hint: 'Password',
                      inputAction: TextInputAction.next,
                    ),
                    const PasswordInput(
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
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Login',
                            style: kBodyText.copyWith(
                                color: kBrown, fontWeight: FontWeight.bold),
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
              Icons.person_outline_sharp,
              color: kBrown,
            ),
            title: PopupMenuButton(
              color: Colors.grey[700],
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  _character == UserTypesSelect.Buyer ? 'Buyer' : 'Seller',
                  style: kBodyText,
                ),
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
                  child: listTile(Colors.black, 'Buyer', UserTypesSelect.Buyer),
                ),
                PopupMenuItem<UserTypesSelect>(
                  value: UserTypesSelect.Seller,
                  child:
                      listTile(Colors.black, 'Seller', UserTypesSelect.Seller),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class UserTypesDropDown extends StatefulWidget {
//   const UserTypesDropDown({Key? key}) : super(key: key);
//
//   @override
//   _UserTypesDropDownState createState() => _UserTypesDropDownState();
// }
//
// class _UserTypesDropDownState extends State<UserTypesDropDown> {
//   late String userType = 'Buyer';
//   DropdownButton<String> dropdownButton() {
//     List<DropdownMenuItem<String>> dropdownItems = [];
//
//     dropdownItems.add(DropdownMenuItem(
//       child: Text('Buyer'),
//       value: 'Buyer',
//     ));
//     dropdownItems.add(DropdownMenuItem(
//       child: Text('Seller'),
//       value: 'Seller',
//     ));
//     return DropdownButton(
//         items: dropdownItems,
//         onChanged: (value) {
//           setState(() {
//             userType = value!;
//           });
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
