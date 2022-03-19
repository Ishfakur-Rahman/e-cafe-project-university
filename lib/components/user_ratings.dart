import 'package:versity_project_coffee/firebase_handling/ratingUpdate.dart';

class UserRatings {
  UserRatings({
    required this.oldTotalUser,
    required this.existingCoffeeRatingInTotal/*,
    required this.coffeeId,*/
    //TODO: convert oldTotalUser and existingCoffeeRatingInTotal to their respective data types
  });

  //TODO: will be added if the plans for coffeeId is accepted
  // final String coffeeId;
  final double existingCoffeeRatingInTotal;
  final int oldTotalUser;

  String _ratings(double newUserRating, int newUser) {
    var result =
        ((existingCoffeeRatingInTotal * oldTotalUser) + newUserRating) /
            (oldTotalUser + newUser);
    return result.toStringAsFixed(1);
  }

  // String _newUserRatingsCoffeeId(){
  //   return coffeeId;
  // }
//TODO: Once Plans executes the above and below functions will be in action
  // void updateRatings(double newUserRatings, int newUsers) async{
  //   await UpdateRatings(updateRatings: _ratings(newUserRatings, newUsers), coffeeId: _newUserRatingsCoffeeId());
  // }
}
