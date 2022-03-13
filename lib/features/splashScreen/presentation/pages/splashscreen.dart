import 'package:flutter/material.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/homePage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  // ignore: unused_element
  _redirectToHome(BuildContext context){
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(_)=>const HomePage()));
  }

  

  @override
  Widget build(BuildContext context) {
    return const Text("SplashScreen");
  }
}