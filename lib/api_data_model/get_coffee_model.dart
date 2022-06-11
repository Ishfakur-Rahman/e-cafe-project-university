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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_items'] = this.totalItems;
    if (this.coffee != null) {
      data['coffee'] = this.coffee!.map((v) => v.toJson()).toList();
    }
    if (this.shopDetails != null) {
      data['shop_details'] = this.shopDetails!.map((v) => v.toJson()).toList();
    }
    return data;
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
    updatedAt = json['updated_at'];
    shopName = json['shopName'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['ratings'] = this.ratings;
    data['taste'] = this.taste;
    data['coffeeType'] = this.coffeeType;
    data['description'] = this.description;
    data['price'] = this.price;
    data['updated_at'] = this.updatedAt;
    data['shopName'] = this.shopName;
    data['user'] = this.user;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coffee_shop_id'] = this.coffeeShopId;
    data['name'] = this.name;
    data['location'] = this.location;
    data['created_at'] = this.createdAt;
    return data;
  }
}