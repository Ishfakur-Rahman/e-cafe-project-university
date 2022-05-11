import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateDataInFirebase {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  var _uid;

  Future<bool> updateUserData(String userName,
      {required String phone,
      required String address,
      required String userTypes}) async {
    try {
      _uid = _auth.currentUser?.uid;
      await _firestore.collection(userTypes).doc(_uid).update({
        'userDetails': {
          'userName': userName,
          'phone': phone,
          'address': address,
        }
      });

      return true;
    } catch (e) {
      return false;
    }
  }
}
