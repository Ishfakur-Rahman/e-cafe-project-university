class GetAllCoffeeModel {
  int? totalItems;
  List<Coffee>? coffee;

  GetAllCoffeeModel({this.totalItems, this.coffee});

  GetAllCoffeeModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['total_items'];
    if (json['coffee'] != null) {
      coffee = <Coffee>[];
      json['coffee'].forEach((v) {
        coffee!.add(Coffee.fromJson(v));
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
