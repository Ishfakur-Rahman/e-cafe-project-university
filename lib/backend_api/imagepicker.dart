import 'package:firebase_storage/firebase_storage.dart' as storage;
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:versity_project_coffee/Theme/mText.dart';
import 'package:path/path.dart';
import 'package:versity_project_coffee/backend_api/coffeedata.dart';
import 'package:versity_project_coffee/home_page.dart';
import 'package:get/get.dart';

class ImagePickerHelper extends StatefulWidget {
  ImagePickerHelper(
      {required this.imagepurpose,
      required String coffeeType,
      required String coffeeTaste,
      required String coffeeName,
      required String coffeeShopLocation,
      required String coffeeShopName,
      required String price});

  late String imagepurpose;
  late String coffeeType;
  late String coffeeTaste;
  late String coffeeName;
  late String coffeeShopLocation;
  late String coffeeShopName;
  late String price;

  @override
  _ImagePickerHelperState createState() => _ImagePickerHelperState();
}

class _ImagePickerHelperState extends State<ImagePickerHelper> {
  File? image;
  late String imagepurposes = widget.imagepurpose;
  late String coffeeTypes = widget.coffeeType;
  late String coffeeTastes = widget.coffeeTaste;
  late String coffeeNames = widget.coffeeName;
  late String coffeeShopLocations = widget.coffeeShopLocation;
  late String coffeeShopNames = widget.coffeeShopName;
  late String prices = widget.price;

  Future pick_image(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {}
  }

  Future uploadFiles(String imagepurpose) async {
    if (image == null) return;

    final imageName = basename(image!.path);
    final destination = '$imagepurpose/$imageName';
    await FirebaseApi.uploadFile(destination, image!);
  }

  Widget buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(56),
          primary: Colors.white,
          onPrimary: Colors.black,
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
        child: Row(
          children: [
            Icon(
              icon,
              size: 28,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(title),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Spacer(),
            image != null
                ? ClipOval(
                    child: Image.file(
                      image!,
                      height: 160,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  )
                : FlutterLogo(
                    size: 160,
                  ),
            const SizedBox(
              height: 24,
            ),
            MText('Upload Image').heading1(),
            const SizedBox(
              height: 24,
            ),
            buildButton(
              title: 'Pick Camera',
              icon: Icons.camera_alt_outlined,
              onClicked: () => pick_image(ImageSource.camera),
            ),
            const SizedBox(
              height: 24,
            ),
            buildButton(
              title: 'Pick Gallery',
              icon: Icons.image_outlined,
              onClicked: () => pick_image(ImageSource.gallery),
            ),
            const SizedBox(
              height: 24,
            ),
            buildButton(
                title: 'Submit',
                icon: Icons.cloud_upload_outlined,
                onClicked: () async {
                  var imageurls = await uploadFiles(imagepurposes);
                  await CoffeeData().addCoffee(
                      coffeeType: coffeeTypes,
                      coffeeTaste: coffeeTastes,
                      coffeeName: coffeeNames,
                      coffeeShopLocation: coffeeShopLocations,
                      coffeeShopName: coffeeShopNames,
                      price: prices,
                      imageUrl: imageurls);
                  Get.off(() => HomePage());
                }),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class FirebaseApi {
  static Future uploadFile(String destination, File file) async {
    try {
      final refs = storage.FirebaseStorage.instance.ref(destination);
      await refs.putFile(file);
      return refs.getDownloadURL();
    } on storage.FirebaseException catch (e) {
      return null;
    }
  }
}
