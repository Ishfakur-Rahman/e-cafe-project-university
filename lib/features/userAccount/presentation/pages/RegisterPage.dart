import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/Theme/mText.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MText("Register Page").heading1()
      ),
    );
  }
}
