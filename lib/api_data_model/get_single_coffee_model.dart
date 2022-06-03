class GetSingleCoffeeItem {
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

  GetSingleCoffeeItem(
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

  GetSingleCoffeeItem.fromJson(Map<String, dynamic> json) {
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