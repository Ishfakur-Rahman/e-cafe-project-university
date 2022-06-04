import 'package:versity_project_coffee/backend_api/coffeedata.dart';
import 'package:versity_project_coffee/database/coffeeModel.dart';

import '../api_data_model/get_coffee_model.dart';

class CoffeeDataLocal {
  Future<List<CoffeeModel>> create_list() async {
    List<Coffee> getCoffeeList = [];
    List<CoffeeModel> coffeeList = [];
    getCoffeeList = await CoffeeData().get_all_coffee();
    for (var coffee in getCoffeeList) {
      coffeeList.add(CoffeeModel(
          coffeeshopid: coffee.coffeeShopID!,
          location: coffee.location!,
          id: coffee.id!,
          title: coffee.name!,
          subTitle: coffee.shopName!,
          catagory: coffee.coffeeType!,
          description: "c",
          image: coffee.img!,
          price: coffee.price!,
          rating: coffee.ratings!,
          isfavorite: false,
          isRecommended: false,
          isPurchased: false));
    }
    return coffeeList;
  }

  Future<List<String>> get catagoryList async{
    List<String> uniCatagoryList = [];
    (await create_list()).forEach((coffee) {
      if (!uniCatagoryList.contains(coffee.catagory))
        uniCatagoryList.add(coffee.catagory);
    });

    return uniCatagoryList;
  }
}
