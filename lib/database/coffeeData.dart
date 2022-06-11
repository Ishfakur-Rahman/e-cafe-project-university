import 'package:versity_project_coffee/database/coffeeModel.dart';

import '../api_data_model/get_coffee_model.dart';

class CoffeeDataLocal {
  Future<List<CoffeeModel>> create_list() async {
    List<GetAllCoffeeModel> getList = [];
    List<CoffeeModel> coffeeList = [];

    for (var coffeedetails in getList) {
      for(int i =0;i<getList.length;i++){
        int j = coffeedetails.coffee![i].shopName!;
      coffeeList.add(CoffeeModel(
          id: coffeedetails.coffee![i].name!,
          location: coffeedetails.shopDetails![j].location!,
          coffeeShopId: coffeedetails.shopDetails![j].coffeeShopId!,
          title: coffeedetails.shopDetails![j].name!,
          subTitle: coffeedetails.shopDetails![j].name!,
          catagory: coffeedetails.coffee![i].coffeeType!,
          description: coffeedetails.coffee![i].description!,
          image: coffeedetails.coffee![i].image!,
          price: coffeedetails.coffee![i].price!,
          rating: coffeedetails.coffee![i].ratings!,
          isfavorite: false,
          isRecommended: false,
          isPurchased: false));}
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
