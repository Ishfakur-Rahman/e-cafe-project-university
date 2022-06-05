class GetCoffeeModel {
  int? totalItems;
  List<Coffee>? coffee;

  GetCoffeeModel({this.totalItems, this.coffee});

  GetCoffeeModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['total_items'];
    if (json['coffee'] != null) {
      coffee = <Coffee>[];
      json['coffee'].forEach((v) {
        coffee!.add(new Coffee.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_items'] = this.totalItems;
    if (this.coffee != null) {
      data['coffee'] = this.coffee!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Coffee {
  int? id;
  String? name;
  String? ratings;
  String? taste;
  String? coffeeType;
  String? price;
  String? img;
  String? updatedAt;
  String? shopName;
  String? coffeeShopID;
  String? location;
  bool? isFavourite;
  String? user;

  Coffee(
      {this.id,
        this.name,
        this.ratings,
        this.taste,
        this.coffeeType,
        this.price,
        this.img,
        this.updatedAt,
        this.shopName,
        this.coffeeShopID,
        this.location,
        this.isFavourite,
        this.user});

  Coffee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    ratings = json['ratings'];
    taste = json['taste'];
    coffeeType = json['coffeeType'];
    price = json['price'];
    img = json['img'];
    updatedAt = json['updated_at'];
    shopName = json['shopName'];
    coffeeShopID = json['coffeeShopID'];
    location = json['location'];
    isFavourite = json['isFavourite'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['ratings'] = this.ratings;
    data['taste'] = this.taste;
    data['coffeeType'] = this.coffeeType;
    data['price'] = this.price;
    data['img'] = this.img;
    data['updated_at'] = this.updatedAt;
    data['shopName'] = this.shopName;
    data['coffeeShopID'] = this.coffeeShopID;
    data['location'] = this.location;
    data['isFavourite'] = this.isFavourite;
    data['user'] = this.user;
    return data;
  }
}