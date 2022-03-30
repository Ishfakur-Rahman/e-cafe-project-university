import 'package:cloud_firestore/cloud_firestore.dart';


class UpdateCoffee{
  UpdateCoffee({required this.coffeeId, required this.updateRatings});
  final _firestore = FirebaseFirestore.instance;
  String? messages;
  final String updateRatings;
  final String coffeeId;

  Future<void> ratingsUpdate() async{
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