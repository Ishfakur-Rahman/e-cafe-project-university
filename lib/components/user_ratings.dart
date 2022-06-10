import 'package:versity_project_coffee/backend_api/coffeedata.dart';

class UserRatings {
  String _ratings({
    required double existingCoffeeRatingInTotal,
    required double newUserRating,
    required int oldTotalUser,
    required int newUser,
  }) {
    var result = (((existingCoffeeRatingInTotal * oldTotalUser) -
                existingCoffeeRatingInTotal) +
            newUserRating) /
        (oldTotalUser + (existingCoffeeRatingInTotal == 0 ? newUser : 0));
    return result.toString();
  }

  Future<void> updateRatings(
    double existingCoffeeRatingInTotal,
    double newUsersRating,
    int newUsers,
    int oldTotalUser,
    String coffeeId,
  ) async {
    var results = _ratings(
      existingCoffeeRatingInTotal: existingCoffeeRatingInTotal,
      newUserRating: newUsersRating,
      newUser: newUsers,
      oldTotalUser: oldTotalUser,
    );
    await CoffeeData().update_coffee_data(
      coffee_id: coffeeId,
      ratings: results,
      // total_users: (oldTotalUser + 1).toString(),
    );
  }
}
