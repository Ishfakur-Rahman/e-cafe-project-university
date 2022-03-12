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

  Future<bool> RegistratingUser() async{
    try{
      _newUser = _auth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    }on FirebaseException catch (e){
      if (e.code == 'weak-password') {
        messages = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        messages = 'The account already exist for that email';
      }
      return false;
    }catch (e){
      messages = 'Valid Email Address are Required';
      return false;
    }
  }

}
