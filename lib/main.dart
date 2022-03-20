import 'package:flutter/material.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      theme: MColors.colorThemeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const LogInPages(),
      },
    );
  }
}
