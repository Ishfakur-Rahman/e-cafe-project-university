import 'package:flutter/material.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/homePage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  _redirectToHome(BuildContext context){
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(_)=>HomePage()));
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("SplashScreen"),
    );
  }
}