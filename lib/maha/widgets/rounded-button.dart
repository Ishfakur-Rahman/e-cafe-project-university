import 'dart:async';
import 'package:flutter/material.dart';
import 'package:versity_project_coffee/backend_api/registrationhandling.dart';
import 'package:versity_project_coffee/bottom_page.dart';
import '../../database/userBoxController.dart';
import '../pallete.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/sellerPage.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.buttonName,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String buttonName;


  late String messages = ' ';

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
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
