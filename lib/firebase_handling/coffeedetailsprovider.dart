import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//TODO: this class will use the stream builder for coffee
class CoffeeDetailsProvider{

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  static var coffeeData;

  void fetchCoffeeData(){
    try{
      coffeeData = _firestore.doc('coffee').collection('coffeeDetails').orderBy('more').orderBy('times').snapshots();
      print(coffeeData);
    }catch(e){}
  }
}