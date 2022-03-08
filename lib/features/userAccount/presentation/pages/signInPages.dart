// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: LogInCard(),
    );
  }
}

class LogInCard extends StatefulWidget {
  const LogInCard({Key? key}) : super(key: key);

  @override
  State<LogInCard> createState() => _LogInCardState();
}

class _LogInCardState extends State<LogInCard> {
  @override
  Widget build(BuildContext context) {
    var _showPass = true;
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Color.fromARGB(169, 14, 5, 4), BlendMode.overlay),
                image: AssetImage(
                  "lib/Asset/Image/Sign up.png",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Spacer(
                    flex: 10,
                  ),
                  MText("Sign In").heading1(),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                          color: MColors.primaryColorDark,
                          decorationColor: MColors.primaryColorLight),
                      prefixIcon: Icon(
                        Iconsax.user,
                        color: MColors.primaryColorDark,
                      ),
                    ),
                    cursorColor: MColors.primaryColorDark,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: MColors.primaryColorDark,
                          decorationColor: MColors.primaryColorLight),
                      prefixIcon: Icon(
                        Iconsax.message,
                        color: MColors.primaryColorDark,
                      ),
                    ),
                    cursorColor: MColors.primaryColorDark,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: _showPass,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: MColors.primaryColorDark,
                          decorationColor: MColors.primaryColorLight),
                      prefixIcon: Icon(
                        Iconsax.lock,
                        color: MColors.primaryColorDark,
                      ),
                      suffix: IconButton(
                        icon: Icon(_showPass == true
                            ? Iconsax.eye
                            : Iconsax.eye_slash),
                        onPressed: () {
                          setState(() {
                            
                            _showPass ? _showPass = false : _showPass = true;
                          });
                        },
                      ),
                    ),
                    cursorColor: MColors.primaryColorDark,
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
