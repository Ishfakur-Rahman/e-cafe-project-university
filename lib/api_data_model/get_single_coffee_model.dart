class GetSingleCoffeeModel {
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

  GetSingleCoffeeModel(
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

  GetSingleCoffeeModel.fromJson(Map<String, dynamic> json) {
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