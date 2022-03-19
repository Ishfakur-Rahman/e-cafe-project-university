import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:versity_project_coffee/components/user_ratings.dart';
import 'package:versity_project_coffee/features/userAccount/data/models/user.dart';
class UpdateRatings{
  UpdateRatings({required this.coffeeId, required this.updateRatings});
  var _firestore = FirebaseFirestore.instance;
  String? messages;
  final String updateRatings;
  final String coffeeId;

  void updateFirebase() async{
    try{
      await _firestore.collection('coffee').doc('coffeeDetails').update({
        'coffeeId': coffeeId,
        'more':{
          'rating': updateRatings,
        }
      });
    }catch(e){
      messages = e.toString();
    }
  }

}