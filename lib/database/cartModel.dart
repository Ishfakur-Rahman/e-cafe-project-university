import 'dart:convert';

import 'package:hive/hive.dart';

part 'cartModel.g.dart';

@HiveType(typeId: 0)
class CartModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String shopName;
  @HiveField(3)
  final String size;
  @HiveField(4)
  final String price;
  @HiveField(5)
  final String ratings;
  @HiveField(6)
  final String image;
  
  CartModel({
    required this.id,
    required this.name,
    required this.shopName,
    required this.size,
    required this.price,
    required this.ratings,
    required this.image,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'shopName': shopName,
      'size': size,
      'price': price,
      'ratings': ratings,
      'image': image,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      shopName: map['shopName'] ?? '',
      size: map['size'] ?? '',
      price: map['price'] ?? '',
      ratings: map['ratings'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) => CartModel.fromMap(json.decode(source));
}
