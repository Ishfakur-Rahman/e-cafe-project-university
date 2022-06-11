// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';

class CoffeeModel {
  final String img; 
  final String name;
  final String type;
  final String market;
  final double ratings;
  final double price;
  CoffeeModel({
    required this.img,
    required this.name,
    required this.type,
    required this.market,
    required this.ratings,
    required this.price,
  });
  

  CoffeeModel copyWith({
    String? img,
    String? name,
    String? type,
    String? market,
    double? ratings,
    double? price,
  }) {
    return CoffeeModel(
      img: img ?? this.img,
      name: name ?? this.name,
      type: type ?? this.type,
      market: market ?? this.market,
      ratings: ratings ?? this.ratings,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'img': img,
      'name': name,
      'type': type,
      'market': market,
      'ratings': ratings,
      'price': price,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      img: map['img'] ?? '',
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      market: map['market'] ?? '',
      ratings: map['ratings']?.toDouble() ?? 0.0,
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) => CoffeeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CoffeeModel(img: $img, name: $name, type: $type, market: $market, ratings: $ratings, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CoffeeModel &&
      other.img == img &&
      other.name == name &&
      other.type == type &&
      other.market == market &&
      other.ratings == ratings &&
      other.price == price;
  }

  @override
  int get hashCode {
    return img.hashCode ^
      name.hashCode ^
      type.hashCode ^
      market.hashCode ^
      ratings.hashCode ^
      price.hashCode;
  }
}
