// ignore_for_file: file_names, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/HomePageScreen.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/addFormPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    HomePageController ctrl = Get.put(HomePageController());
    var pageTitle = "Home Page";
    return Scaffold(
      appBar: AppBar(
        title: MText("").heading2(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.notification5),
            splashRadius: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.user),
            splashRadius: 25,
          ),
        ],
      ),
      body: IndexedStack(index: ctrl.tabIndex, children: [
        HomeScreen(),
        ProfileUserScreen(),
        SettingScreen(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ctrl.changeTagIndex,
          currentIndex: ctrl.tabIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_2user), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.setting_2), label: 'Setting'),
          ]),
      floatingActionButton: (ctrl.tabIndex == 0)
          ? FloatingActionButton(
              onPressed: () {
                Get.to(() => AddFormPage());
              },
              backgroundColor: MColors.primaryColor,
              child: Icon(Iconsax.add))
          : null,
    );
  }
}

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomePageController extends GetxController {
  var tabIndex = 0;
  changeTagIndex(int index) {
    tabIndex = index;
    update();
  }
}
