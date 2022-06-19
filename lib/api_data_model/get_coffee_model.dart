class GetAllCoffeeModel {
  int? totalItems;
  List<Coffee>? coffee;
  List<ShopDetails>? shopDetails;

  GetAllCoffeeModel({this.totalItems, this.coffee, this.shopDetails});

  GetAllCoffeeModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['total_items'];
    if (json['coffee'] != null) {
      coffee = <Coffee>[];
      json['coffee'].forEach((v) {
        coffee!.add(new Coffee.fromJson(v));
      });
    }
    if (json['shop_details'] != null) {
      shopDetails = <ShopDetails>[];
      json['shop_details'].forEach((v) {
        shopDetails!.add(new ShopDetails.fromJson(v));
      });
    }
  }
}

class Coffee {
  String? name;
  String? image;
  String? ratings;
  String? taste;
  String? coffeeType;
  String? description;
  int? price;
  int? totalUser;
  String? updatedAt;
  int? shopName;
  String? user;

  Coffee(
      {this.name,
        this.image,
        this.ratings,
        this.taste,
        this.coffeeType,
        this.description,
        this.price,
        this.totalUser,
        this.updatedAt,
        this.shopName,
        this.user});

  Coffee.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    ratings = json['ratings'];
    taste = json['taste'];
    coffeeType = json['coffeeType'];
    description = json['description'];
    price = json['price'];
    totalUser = json['totalUser'];
    updatedAt = json['updated_at'];
    shopName = json['shopName'];
    user = json['user'];
  }
}

class ShopDetails {
  int? coffeeShopId;
  String? name;
  String? location;
  String? createdAt;

  ShopDetails({this.coffeeShopId, this.name, this.location, this.createdAt});

  ShopDetails.fromJson(Map<String, dynamic> json) {
    coffeeShopId = json['coffee_shop_id'];
    name = json['name'];
    location = json['location'];
    createdAt = json['created_at'];
  }
}