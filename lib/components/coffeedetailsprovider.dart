import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

class CoffeeDetails{
  final _firestore = FirebaseFirestore.instance;

  Future<void> coffeeProvider() async{
    var result = await _firestore.collection('coffeeCategories').get();
    for(var ds in result.docs){
      print(ds.data().toString());
    }
  }

}