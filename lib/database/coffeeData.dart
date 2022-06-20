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
    for (var coffeedetails in getcoffeeList.coffee!) {
      coffeeList.add(CoffeeModel(
          id: coffeedetails.name!,
          location: getshopList.shopsDetails![coffeedetails.shopName!].location!,
          coffeeShopId: getshopList.shopsDetails![coffeedetails.shopName!].coffeeShopId!,
          title: getshopList.shopsDetails![coffeedetails.shopName!].name!,
          subTitle: getshopList.shopsDetails![coffeedetails.shopName!].name!,
          catagory: coffeedetails.coffeeType!,
          description: coffeedetails.description!,
          image: coffeedetails.image!,
          price: coffeedetails.price!,
          rating: coffeedetails.ratings!,
          totalUser: coffeedetails.totalUser!,
          isfavorite: false,
          isRecommended: false,
          isPurchased: false));
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
