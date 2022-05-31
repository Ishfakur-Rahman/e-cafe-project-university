import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/bottom_page.dart';
import 'package:versity_project_coffee/components/coffeedetailsprovider.dart';
import 'package:versity_project_coffee/database/cartModel.dart';
import 'package:versity_project_coffee/database/hiveRepository.dart';
import 'package:versity_project_coffee/home_page.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/userAccount/presentation/pages/LogInPage.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveRepository.init();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: MColors.homeThemeData,
      initialRoute: '/',
      routes: {
        '/': (context) => BottomPage(),
      },
    );
  }
}
