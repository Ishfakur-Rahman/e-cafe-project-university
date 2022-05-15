import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/firebase_handling/imagepicker.dart';

import '../../../../Theme/mText.dart';

class AddFormPage extends StatelessWidget {
  const AddFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MColors.homeThemeData,
      home: Scaffold(
        appBar: AppBar(
          title: MText("Add your product").heading2(),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Iconsax.backward),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Enter your product\'s name',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Subtitile',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Product\'s description',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Price',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Enter your product\'s name',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Enter your product\'s name',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      onPressed: () {
                        Get.to (() => ImagePickerHelper(imagepurpose: 'coffeeImages',));
                      },
                      icon: Icon(Iconsax.send),
                      label: Padding(
                          padding: EdgeInsets.all(8),
                          child: MText("Next").heading2())),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
