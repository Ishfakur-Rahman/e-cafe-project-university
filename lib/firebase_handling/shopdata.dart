import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class ShopData {
  ShopData({
    required this.shopAddress,
    required this.shopName,
    required this.govtRegNo,
  });

  final String shopName;
  final String shopAddress;
  final String govtRegNo;
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<bool> addShopData() async{
    try{
      var coffeeShopUid = _auth.currentUser?.uid;
      await _firestore.collection('coffeeShop').doc('shopDetails')
      .collection(coffeeShopUid!).doc(shopName).set({
        'shopAddress' : shopAddress,
        'govt.Registration' : govtRegNo,
      });
      return true;
    }catch (e){
      return false;
    }

  }
  Future<bool> updateShopData(String shopAddress, String govtRegNo,
      {required String shopName}) async {
    try {
      var _uid = _auth.currentUser?.uid;
      await _firestore
          .collection('coffeeShop')
          .doc('shopDetails')
          .collection(_uid!)
          .doc(shopName)
          .update({
        'shopAddress': shopAddress,
        'govt.Registration': govtRegNo,
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
