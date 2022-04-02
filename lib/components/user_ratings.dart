import 'package:versity_project_coffee/firebase_handling/coffeedata.dart';

class UserRatings {
  UserRatings({
    required this.oldTotalUser,
    required this.existingCoffeeRatingInTotal,
    required this.coffeeId,
    required this.coffeeType,
  });

  final String coffeeId;
  final double existingCoffeeRatingInTotal;
  final int oldTotalUser;
  final String coffeeType;

  String _ratings(double userOldRatings, double newUserRating, int newUser) {
    var result =
        (((existingCoffeeRatingInTotal * oldTotalUser) - userOldRatings) +
                newUserRating) /
            (oldTotalUser + userOldRatings == 0 ? newUser : 0);
    return result.toString();
  }

  String _newUserRatingsCoffeeId(){
    return coffeeId;
  }
  Future<String> updateRatings(
    double usersOldRatings,
    double newUsersRating,
    int newUsers,
  ) async {
    var results = _ratings(usersOldRatings, newUsersRating, newUsers);
    await CoffeeData().updateRatings(
      dataBaseId: _newUserRatingsCoffeeId(),
      ratings: results,
      coffeeType: coffeeType,
    );
    return results;
  }
}
