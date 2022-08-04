import 'package:flutter/material.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/bottom_page.dart';
import 'package:versity_project_coffee/database/hiveRepository.dart';
import 'package:versity_project_coffee/database/userBoxController.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/home_page.dart';
import 'features/userAccount/presentation/pages/LogInPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveRepository.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})   : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: MColors.homeThemeData,
      initialRoute: '/',
      routes: {
        '/': (context) => LogInPages(),
      },
    );
  }
}
