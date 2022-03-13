// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:versity_project_coffee/features/homePage/data/models/coffeeModel.dart';

class HomeControllerService extends GetxController {
  var coffee = <CoffeeModel>[].obs; //TODO: here fetch coffee

  @override
  void onInit() {
    super.onInit();
    fetchCoffees();
  }

  void fetchCoffees() async {
    var coffeeResult = [
      CoffeeModel(
          name: "My Coffee",
          type: "latte",
          market: "market",
          ratings: 0,
          price: 50),
      CoffeeModel(
          name: "My Coffee",
          type: "latte",
          market: "market",
          ratings: 0,
          price: 50),
      CoffeeModel(
          name: "My Coffee",
          type: "latte",
          market: "market",
          ratings: 0,
          price: 50),
      CoffeeModel(
          name: "My Coffee",
          type: "latte",
          market: "market",
          ratings: 0,
          price: 50),
      CoffeeModel(
          name: "My Coffee",
          type: "latte",
          market: "market",
          ratings: 0,
          price: 50),
      CoffeeModel(
          name: "My Coffee",
          type: "latte",
          market: "market",
          ratings: 0,
          price: 50),
    ];
    coffee.value = coffeeResult;
  }
}
