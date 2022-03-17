import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationHelper {
  RegistrationHelper({
    required this.userName,
    required this.email,
    required this.password,
    required this.userTypes,
  });

  final _auth = FirebaseAuth.instance;
  final String email;
  final String password;
  final String userTypes;
  final String userName;
  late final _newUser;
  late String messages;
  final _firestore = FirebaseFirestore.instance;
  var _uid;

  Future<bool> completeRegistration() async {
    try {
      _uid =  _auth.currentUser?.uid;
      await _firestore.collection('userDetails').doc(userTypes).set({
        'userDetails':{
          'userName' : userName,
          'userEmail' : email,
          'phone' : '018-XXX-XXXXX',
          'address' : 'add your location',
        },
        'userId' : _uid,
      });
      return true;
    } on FirebaseException catch (e) {
      messages = e.code;
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> registratingUser() async {
    try {
      _newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (_newUser != null) {
        await completeRegistration();
      }
      return true;
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        messages = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        messages = 'The account already exist for that email';
      }
      return false;
    } catch (e) {
      messages = 'Valid Email Address are Required';
      return false;
    }
  }
}
