// ignore_for_file: file_names, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/HomePageScreen.dart';
import 'package:versity_project_coffee/features/homePage/presentation/pages/addFormPage.dart';
import 'package:versity_project_coffee/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SellerPageController ctrl = Get.put(SellerPageController());
    var pageTitle = "Home Page";
    return Obx(() => Scaffold(
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
          body: Obx(() => IndexedStack(index: ctrl.tabIndex.value, children: [
                HomeScreen(),
                // ProfileUserScreen(),
                SettingsScreen(),
              ])),
          bottomNavigationBar: Obx(() => BottomNavigationBar(
                  onTap: ctrl.changeTagIndex,
                  currentIndex: ctrl.tabIndex.value,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.home), label: 'Home'),
                // BottomNavigationBarItem(
                //     icon: Icon(Iconsax.profile_2user), label: 'Profile'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.setting_2), label: 'Setting'),
              ])),
      floatingActionButton: (ctrl.tabIndex.value == 0)
          ? FloatingActionButton(
              onPressed: () {
                Get.to(() => AddFormPage());
              },
              backgroundColor: MColors.primaryColor,
              child: Icon(Iconsax.add))
          : null,
    ));
  }
}

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SellerPageController extends GetxController {
  RxInt tabIndex = 0.obs;
  changeTagIndex(int index) {
    tabIndex.value = index;
    update();
  }
}
