class GetOrderDataModel {
  List<AllOrders>? allOrders;

  GetOrderDataModel({this.allOrders});

  GetOrderDataModel.fromJson(Map<String, dynamic> json) {
    if (json['all_orders'] != null) {
      allOrders = <AllOrders>[];
      json['all_orders'].forEach((v) {
        allOrders!.add(new AllOrders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.allOrders != null) {
      data['all_orders'] = this.allOrders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllOrders {
  int? id;
  String? name;
  String? size;
  int? quantity;
  String? shopName;
  String? address;
  String? contact;
  String? updatedAt;
  String? createdAt;
  String? user;
  int? coffeeId;

  AllOrders(
      {this.id,
        this.name,
        this.size,
        this.quantity,
        this.shopName,
        this.address,
        this.contact,
        this.updatedAt,
        this.createdAt,
        this.user,
        this.coffeeId});

  AllOrders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    size = json['size'];
    quantity = json['quantity'];
    shopName = json['shop_name'];
    address = json['address'];
    contact = json['contact'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    user = json['user'];
    coffeeId = json['coffee_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['size'] = this.size;
    data['quantity'] = this.quantity;
    data['shop_name'] = this.shopName;
    data['address'] = this.address;
    data['contact'] = this.contact;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['user'] = this.user;
    data['coffee_id'] = this.coffeeId;
    return data;
  }
}