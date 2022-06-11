import 'package:versity_project_coffee/backend_api/coffeedata.dart';

class UserRatings {
  String _ratings({
    required double existingCoffeeRatingInTotal,
    required double newUserRating,
    required int oldTotalUser,
  }) {
    var result = (((existingCoffeeRatingInTotal * oldTotalUser) -
                existingCoffeeRatingInTotal) +
            newUserRating) /
        (oldTotalUser + (existingCoffeeRatingInTotal == 0 ? 1 : 0));
    return result.toString();
  }

  Future<void> updateRatings(
    double existingCoffeeRatingInTotal,
    double newUsersRating,
    int oldTotalUser,
    String coffeeId,
  ) async {
    var results = _ratings(
      existingCoffeeRatingInTotal: existingCoffeeRatingInTotal,
      newUserRating: newUsersRating,
      oldTotalUser: oldTotalUser,
    );
    await CoffeeData().update_coffee_data(
      coffee_id: coffeeId,
      ratings: results,
      // total_users: (oldTotalUser + 1).toString(),
    );
  }
}
