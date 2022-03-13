import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/features/userAccount/presentation/pages/LogInPage.dart';

class UserAccountControllerService extends GetxController {
  var eyePressed = true.obs;

  toggleEye() {
    return eyePressed.value != eyePressed.value;
  }

  var pwdController = TextEditingController().obs;

  var emailController = TextEditingController().obs;
}