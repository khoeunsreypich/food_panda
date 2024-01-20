import 'package:flutter/foundation.dart';
import 'package:food_panda/data/response/api_response.dart';
import 'package:food_panda/view/home/repository/restaurant_repo.dart';
import 'package:http/http.dart%20';

import '../models/restaurant.dart';

class RestaurantViewModel extends ChangeNotifier{
  var _restaurantRepo = RestaurantRepository();
  ApiResponse<Restaurant> response = ApiResponse.loading();
  setRestaurantList(response){
    this.response=response;
    notifyListeners();
  }

Future<dynamic> getAllRestaurant() async{
    await _restaurantRepo.getAllRestaurants().then((restaurant)=>
    setRestaurantList(ApiResponse.completed(restaurant))).onError((error, stackTrace) =>
    setRestaurantList((ApiResponse.error(stackTrace.toString()))));
}
}