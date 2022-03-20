import 'package:versity_project_coffee/firebase_handling/updateRating.dart';

class UserRatings {
  UserRatings(
      {required this.oldTotalUser,
      required this.existingCoffeeRatingInTotal /*,
    required this.coffeeId,*/
      //TODO: convert oldTotalUser and existingCoffeeRatingInTotal to their respective data types
      });

  //TODO: will be added if the plans for coffeeId is accepted
  // final String coffeeId;
  final double existingCoffeeRatingInTotal;
  final int oldTotalUser;

  String _ratings(double userOldRatings, double newUserRating, int newUser) {
    var result =
        (((existingCoffeeRatingInTotal * oldTotalUser) - userOldRatings) +
                newUserRating) /
            (oldTotalUser + newUser);
    return result.toStringAsFixed(1);
  }

  // String _newUserRatingsCoffeeId(){
  //   return coffeeId;
  // }
//TODO: Once Plans executes the above and below functions will be in action
//   Future<String> updateRatings(
//     double usersOldRatings,
//     double newUsersRating,
//     int newUsers,
//   ) async {
//     var results = _ratings(usersOldRatings, newUsersRating, newUsers);
//     await UpdateRatings(
//             updateRatings: results, coffeeId: _newUserRatingsCoffeeId())
//         .updateFirebase();
//     return results;
//   }
}
