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

  String ratings(double newUserRating, int newUser) {
    var result =
        ((existingCoffeeRatingInTotal * oldTotalUser) + newUserRating) /
            (oldTotalUser + newUser);
    return result.toStringAsFixed(1);
  }

  // String newUserRatingsCoffeeId(){
  //   return coffeeId;
  // }

}
