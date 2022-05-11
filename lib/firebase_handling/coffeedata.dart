import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class CoffeeData {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  var coffeeId;
  late String errorMessage;

  Future<bool> addCoffee({
    required String coffeeType,
    required String coffeeTaste,
    required String coffeeName,
    required String coffeeShopLocation,
    required String coffeeShopName,
  }) async {
    try {
      await _firestore
          .collection('coffeeIdGenerator')
          .add({}).then((value) async {
        coffeeId = value.id;
        var coffeeShopUid = _auth.currentUser?.uid;
        await _firestore
            .collection('coffeeShop')
            .doc('coffeeDetails')
            .collection(coffeeType)
            .doc((coffeeType + coffeeId))
            .set({
          'databaseId': (coffeeType + coffeeId),
          'coffeeImageId': coffeeId, //TODO: use it for network image
          'coffeeDetails': {
            'name': coffeeName,
            'taste': coffeeTaste,
            'more': {
              'rating': 'No Ratings',
              'Uploaded time':
                  DateFormat('dd-MM-yyyy KK:mm:ss').format(DateTime.now()),
            },
          },
          'seller': {
            'shopName': coffeeShopName,
            'coffeeShopId': coffeeShopUid,
            'shopLocation': coffeeShopLocation,
          }
        });
      });
      return true;
    } catch (e) {
      errorMessage = e.toString();
      return false;
    }
  }

  Future<bool> updateCoffeeData(
    String coffeeName,
    String coffeeTaste, {
    required String coffeeId,
    required String dataBaseId,
    required String coffeeType,
  }) async {
    try {
      await _firestore
          .collection('coffeeShop')
          .doc('coffeeDetails')
          .collection(coffeeType)
          .doc(dataBaseId)
          .update({
        'coffeeDetails': {
          'name': coffeeName,
          'taste': coffeeTaste,
          'more': {
            'Last Update':
                DateFormat('dd-MM-yyyy KK:mm:ss').format(DateTime.now()),
          }
        },
      });
      return true;
    } catch (e) {
      errorMessage = e.toString();
      return false;
    }
  }

  Future<bool> updateRatings(
      {required String ratings,
      required String dataBaseId,
      required String coffeeType}) async {
    try {
      await _firestore
          .collection('coffeeShop')
          .doc('coffeeDetails')
          .collection(coffeeType)
          .doc(dataBaseId)
          .set({
        'coffeeDetails': {
          'more': {
            'rating': ratings,
          },
        },
      });
      return true;
    } catch (e) {
      errorMessage = e.toString();
      return false;
    }
  }
}
