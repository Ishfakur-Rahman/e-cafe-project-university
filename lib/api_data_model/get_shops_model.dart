class GetAllShopModel {
  int? totalShop;
  List<ShopsDetails>? shopsDetails;

  GetAllShopModel({this.totalShop, this.shopsDetails});

  GetAllShopModel.fromJson(Map<String, dynamic> json) {
    totalShop = json['total_shop'];
    if (json['shops_details'] != null) {
      shopsDetails = <ShopsDetails>[];
      json['shops_details'].forEach((v) {
        shopsDetails!.add(new ShopsDetails.fromJson(v));
      });
    }
  }
}

class ShopsDetails {
  int? coffeeShopId;
  String? name;
  String? location;
  String? createdAt;

  ShopsDetails({this.coffeeShopId, this.name, this.location, this.createdAt});

  ShopsDetails.fromJson(Map<String, dynamic> json) {
    coffeeShopId = json['coffee_shop_id'];
    name = json['name'];
    location = json['location'];
    createdAt = json['created_at'];
  }
}