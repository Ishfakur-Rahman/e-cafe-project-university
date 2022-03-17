import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CoffeeDetailsProvide{

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  static var coffeeData;

  void fetchCoffeeData(){
    coffeeData = _firestore.doc('coffee').collection('coffeeDetails').orderBy('more').orderBy('times').snapshots();
  }
}