class GetSingleShopModel {
  int? coffeeShopId;
  String? name;
  String? location;
  String? createdAt;

  GetSingleShopModel(
      {this.coffeeShopId, this.name, this.location, this.createdAt});

  GetSingleShopModel.fromJson(Map<String, dynamic> json) {
    coffeeShopId = json['coffee_shop_id'];
    name = json['name'];
    location = json['location'];
    createdAt = json['created_at'];
  }
}