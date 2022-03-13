// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserAccountControllerService extends GetxController {
  var eyePressed = true.obs;

  toggleEye() {
    return eyePressed.value != eyePressed.value;
  }

  var pwdController = TextEditingController().obs;

  var emailController = TextEditingController().obs;
}
