import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class AddCoffee {
  AddCoffee({
    required this.coffeeType,
    required this.coffeeTaste,
    required this.coffeeName,
    required this.coffeeShopLocation,
    required this.coffeeShopName,
  });

  //TODO:Planning on adding a unique id for each coffees
  final String coffeeType;
  final String coffeeTaste;
  final String coffeeName;
  final String coffeeShopLocation;
  final String coffeeShopName;
  var coffeeShopUid;
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;


  Future<bool> addCoffee() async {
    try {
      coffeeShopUid = _auth.currentUser?.uid;
      await _firestore.collection('coffee').doc('coffeeDetails').set({
        'name': coffeeName,
        'type': coffeeType,
        'taste': coffeeTaste,
        'more': {
          'rating': 'No Ratings',
          'times': DateFormat('dd-MM-yyyy KK:mm:ss').format(DateTime.now()),
        },
        'seller': {
          'shopName': coffeeShopName,
          'coffeeShopId': coffeeShopUid,
          'shopLocation': coffeeShopLocation,
        }
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
