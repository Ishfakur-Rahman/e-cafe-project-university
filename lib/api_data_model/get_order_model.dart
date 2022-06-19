class GetAllOrderDataModel {
  List<AllOrders>? allOrders;

  GetAllOrderDataModel({this.allOrders});

  GetAllOrderDataModel.fromJson(Map<String, dynamic> json) {
    if (json['all_orders'] != null) {
      allOrders = <AllOrders>[];
      json['all_orders'].forEach((v) {
        allOrders!.add(new AllOrders.fromJson(v));
      });
    }
  }
}

class AllOrders {
  int? id;
  String? name;
  String? size;
  int? quantity;
  String? address;
  int? contact;
  String? updatedAt;
  String? createdAt;
  String? user;
  String? coffeeId;
  int? shopName;

  AllOrders(
      {this.id,
        this.name,
        this.size,
        this.quantity,
        this.address,
        this.contact,
        this.updatedAt,
        this.createdAt,
        this.user,
        this.coffeeId,
        this.shopName});

  AllOrders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    size = json['size'];
    quantity = json['quantity'];
    address = json['address'];
    contact = json['contact'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    user = json['user'];
    coffeeId = json['coffee_id'];
    shopName = json['shop_name'];
  }
}
