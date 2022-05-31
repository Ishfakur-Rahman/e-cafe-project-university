import 'dart:convert';

import 'package:flutter/foundation.dart';

class CoffeeModel {
  final int id;
  final String title;
  final String subTitle;
  final String catagory;
  final List<String>? ingredients;
  final String description;
  final String image;
  final String price;
  final String rating;
  final bool isfavorite;
  final bool isRecommended;
  final bool isPurchased;
  final DateTime? purchaseDate;
  CoffeeModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.catagory,
    this.ingredients,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.isfavorite,
    required this.isRecommended,
    required this.isPurchased,
    this.purchaseDate,
  });

  CoffeeModel copyWith({
    int? id,
    String? title,
    String? subTitle,
    String? catagory,
    List<String>? ingredients,
    String? description,
    String? image,
    String? price,
    String? rating,
    bool? isfavorite,
    bool? isRecommended,
    bool? isPurchased,
    DateTime? purchaseDate,
  }) {
    return CoffeeModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      catagory: catagory ?? this.catagory,
      ingredients: ingredients ?? this.ingredients,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      isfavorite: isfavorite ?? this.isfavorite,
      isRecommended: isRecommended ?? this.isRecommended,
      isPurchased: isPurchased ?? this.isPurchased,
      purchaseDate: purchaseDate ?? this.purchaseDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subTitle': subTitle,
      'catagory': catagory,
      'ingredients': ingredients,
      'description': description,
      'image': image,
      'price': price,
      'rating': rating,
      'isfavorite': isfavorite,
      'isRecommended': isRecommended,
      'isPurchased': isPurchased,
      'purchaseDate': purchaseDate?.millisecondsSinceEpoch,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      subTitle: map['subTitle'] ?? '',
      catagory: map['catagory'] ?? '',
      ingredients: List<String>.from(map['ingredients']),
      description: map['description'] ?? '',
      image: map['image'] ?? '',
      price: map['price'] ?? '',
      rating: map['rating'] ?? '',
      isfavorite: map['isfavorite'] ?? false,
      isRecommended: map['isRecommended'] ?? false,
      isPurchased: map['isPurchased'] ?? false,
      purchaseDate: map['purchaseDate'] != null ? DateTime.fromMillisecondsSinceEpoch(map['purchaseDate']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) => CoffeeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CoffeeModel(id: $id, title: $title, subTitle: $subTitle, catagory: $catagory, ingredients: $ingredients, description: $description, image: $image, price: $price, rating: $rating, isfavorite: $isfavorite, isRecommended: $isRecommended, isPurchased: $isPurchased, purchaseDate: $purchaseDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CoffeeModel &&
      other.id == id &&
      other.title == title &&
      other.subTitle == subTitle &&
      other.catagory == catagory &&
      listEquals(other.ingredients, ingredients) &&
      other.description == description &&
      other.image == image &&
      other.price == price &&
      other.rating == rating &&
      other.isfavorite == isfavorite &&
      other.isRecommended == isRecommended &&
      other.isPurchased == isPurchased &&
      other.purchaseDate == purchaseDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      subTitle.hashCode ^
      catagory.hashCode ^
      ingredients.hashCode ^
      description.hashCode ^
      image.hashCode ^
      price.hashCode ^
      rating.hashCode ^
      isfavorite.hashCode ^
      isRecommended.hashCode ^
      isPurchased.hashCode ^
      purchaseDate.hashCode;
  }
}
