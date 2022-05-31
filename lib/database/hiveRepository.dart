import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:versity_project_coffee/database/userBoxController.dart';

import 'cartBoxController.dart';

class HiveRepository {
  static init() async {
    Hive.init((await getApplicationDocumentsDirectory()).path);
    UserBoxController().hiveInit();
    CartBoxController().hiveInit();
  }
}
