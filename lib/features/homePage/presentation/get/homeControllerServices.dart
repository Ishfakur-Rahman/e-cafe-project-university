import 'package:get/get.dart';

class HomeControllerService extends GetxController {
  final _index = 0.obs;
  set index(int value) =>_index.value = value;
  int get index => _index.value;
  final _rating = [for (double i = 1; i <= 10; i++) i].obs;
  set rating(double value) => _rating[index] = value;
  double get rating => _rating[index];
}
