// ignore_for_file: file_names

import 'dart:convert';

class CoffeeModel {
  // final Image img; //TODO: images are here
  final String name;
  final String type;
  final String market;
  final double ratings;
  final double price;
  CoffeeModel({
    required this.name,
    required this.type,
    required this.market,
    required this.ratings,
    required this.price,
  });

  CoffeeModel copyWith({
    String? name,
    String? type,
    String? market,
    double? ratings,
    double? price,
  }) {
    return CoffeeModel(
      name: name ?? this.name,
      type: type ?? this.type,
      market: market ?? this.market,
      ratings: ratings ?? this.ratings,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'type': type,
      'market': market,
      'ratings': ratings,
      'price': price,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
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
    return 'CoffeeModel(name: $name, type: $type, market: $market, ratings: $ratings, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CoffeeModel &&
      other.name == name &&
      other.type == type &&
      other.market == market &&
      other.ratings == ratings &&
      other.price == price;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      type.hashCode ^
      market.hashCode ^
      ratings.hashCode ^
      price.hashCode;
  }
}
