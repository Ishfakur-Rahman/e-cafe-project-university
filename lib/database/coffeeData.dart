import 'dart:convert';

import 'package:versity_project_coffee/database/coffeeModel.dart';

import 'package:versity_project_coffee/backend_api/coffeedata.dart';
import 'package:versity_project_coffee/backend_api/shopdetails.dart';

import '../api_data_model/get_coffee_model.dart';
import '../api_data_model/get_shops_model.dart';

class CoffeeDataLocal {
  Future<List<CoffeeModel>> create_list() async {
    var getcoffees = await CoffeeData().get_all_coffee();
    var getshops = await ShopDetail().get_all_shop_details();
    List<CoffeeModel> coffeeList = [];
    var getcoffeeList = GetAllCoffeeModel.fromJson(jsonDecode(getcoffees));
    var getshopList = GetAllShopModel.fromJson(jsonDecode(getshops));

    for (var coffees in getcoffeeList.coffee!) {
      for (var shops in getshopList.shopsDetails!) {
        if (shops.coffeeShopId == coffees.shopName) {
          coffeeList.add(CoffeeModel(
              id: coffees.name!,
              location: shops.location!,
              coffeeShopId: shops.coffeeShopId!,
              title: shops.name!,
              subTitle: shops.name!,
              catagory: coffees.coffeeType!,
              description: coffees.description!,
              image: coffees.image!,
              price: coffees.price!,
              rating: coffees.ratings!,
              totalUser: coffees.totalUser!,
              isfavorite: false,
              isRecommended: false,
              isPurchased: false));
          break;
        }
      }
    }
    return coffeeList;
  }

  Future<List<String>> get catagoryList async {
    List<String> uniCatagoryList = [];
    (await create_list()).forEach((coffee) {
      if (!uniCatagoryList.contains(coffee.catagory)) {
        uniCatagoryList.add(coffee.catagory);
      }
    });

    return uniCatagoryList;
  }
}
