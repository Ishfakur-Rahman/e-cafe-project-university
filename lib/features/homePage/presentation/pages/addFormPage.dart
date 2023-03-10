import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:versity_project_coffee/Theme/mColors.dart';
import 'package:versity_project_coffee/backend_api/imagepicker.dart';
import 'dart:io';
import '../../../../Theme/mText.dart';
import '../../../../backend_api/coffeedata.dart';

class AddFormPage extends StatefulWidget {
  @override
  State<AddFormPage> createState() => _AddFormPageState();
}

class _AddFormPageState extends State<AddFormPage> {
  late String imagepurposes;
  late String coffeeTypes = "null";
  late String coffeeTastes = "nul";
  late String coffeeNames = "null";
  late String description = "null";
  late String coffeeShopNames = "null";
  late int prices = 12;
  late File? imagefile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                    onChanged: (val) {
                      coffeeNames = val;
                    },
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
                    onChanged: (value) {
                      coffeeTypes = value;
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Coffee Category',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    onChanged: (val) {
                      description = val;
                    },
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
                    onChanged: (val) {
                      prices = int.parse(val);
                    },
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
                    onChanged: (value) {
                      coffeeTastes = value;
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Ingredients',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      coffeeShopNames = value;
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Color.fromARGB(255, 199, 123, 24).withOpacity(0.7),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        labelText: 'Your Shop\'s name',
                        labelStyle: MText.textThemePoppins(
                            Colors.white, FontWeight.w400, 18)),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      onPressed: () async {
                        imagefile = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImagePickerHelper(),
                          ),
                        );
                      },
                      icon: Icon(Icons.image),
                      label: Padding(
                          padding: EdgeInsets.all(8),
                          child: MText("Upload Image").heading2())),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                      onPressed: () async {
                        showDialog(
                        //ishfaks
                        context: context,
                        builder: (BuildContext context) {
                          return Center(
                            child: CircularProgressIndicator(
                              backgroundColor: MColors.primaryColorDark,
                              color: MColors.primaryColorLight,
                              strokeWidth: 3,
                            ),
                          );
                        });
                        await CoffeeData().addCoffee(
                            coffeeType: coffeeTypes,
                            coffeeTaste: coffeeTastes,
                            coffeeName: coffeeNames,
                            description: description,
                            price: prices,
                            imagefile: imagefile);

                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.send),
                      label: Padding(
                          padding: EdgeInsets.all(8),
                          child: MText("Submit").heading2())),
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
