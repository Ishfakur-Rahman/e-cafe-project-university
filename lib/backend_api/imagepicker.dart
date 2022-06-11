import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:versity_project_coffee/Theme/mText.dart';


class ImagePickerHelper extends StatefulWidget {

  @override
  _ImagePickerHelperState createState() => _ImagePickerHelperState();
}

class _ImagePickerHelperState extends State<ImagePickerHelper> {
  File? image;

  Future pick_image(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {}
  }

  Future<File?> uploadFiles() async {
    if (image == null){
      return null;
    }
    return image;
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
              title: 'Pick from Camera',
              icon: Icons.camera_alt_outlined,
              onClicked: () => pick_image(ImageSource.camera),
            ),
            const SizedBox(
              height: 24,
            ),
            buildButton(
              title: 'Pick from Gallery',
              icon: Icons.image_outlined,
              onClicked: () => pick_image(ImageSource.gallery),
            ),
            const SizedBox(
              height: 24,
            ),
            buildButton(
                title: 'Done',
                icon: Icons.cloud_upload_outlined,
                onClicked: () async {
                  File? imagefile = await uploadFiles();
                  Navigator.pop(context, imagefile);
                }),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

