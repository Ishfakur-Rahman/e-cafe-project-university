import 'package:versity_project_coffee/database/coffeeModel.dart';

import 'package:versity_project_coffee/backend_api/coffeedata.dart';
import 'package:versity_project_coffee/backend_api/shopdetails.dart';

import '../api_data_model/get_coffee_model.dart';
import '../api_data_model/get_shops_model.dart';

class CoffeeDataLocal {
  Future<List<CoffeeModel>> create_list() async {
    List<Coffee> getcoffeeList = await CoffeeData().get_all_coffee();
    List<ShopsDetails> getshopList = await ShopDetail().get_all_shop_details();
    List<CoffeeModel> coffeeList = [];

    for (var coffeedetails in getcoffeeList) {
      coffeeList.add(CoffeeModel(
          id: coffeedetails.name!,
          location: getshopList[coffeedetails.shopName!].location!,
          coffeeShopId: getshopList[coffeedetails.shopName!].coffeeShopId!,
          title: getshopList[coffeedetails.shopName!].name!,
          subTitle: getshopList[coffeedetails.shopName!].name!,
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
