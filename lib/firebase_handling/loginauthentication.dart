import 'package:firebase_auth/firebase_auth.dart';

class Authentication{
  Authentication({required this.email, required this.password});

  final _auth = FirebaseAuth.instance;
  final String email;
  final String password;
  late String messages;
  late final existUser;

  Future<bool> loginAuthentication() async{
    try{
      existUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
      messages = 'Done';
      return true;
    }on FirebaseException catch (e){
      if(e.code == 'user-not-found'){
        messages='No user found for that email! Register Now!';
      }else if(e.code == 'wrong-password'){
        messages = 'Wrong password! Try again';
      }
      return false;
    }
  }
}