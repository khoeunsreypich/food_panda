import 'package:food_panda/data/network/api_service.dart';
import 'package:food_panda/models/request/restaurant_request.dart';
import 'package:food_panda/res/app_url.dart';

import '../../../models/restaurant.dart';

class RestaurantRepository {
  var apiService = ApiService();

  Future<dynamic> postRestaurant (data) async {
    var restaurantRequest = restaurantToJson(data);
    dynamic response = await apiService.postRestaurant(AppUrl.postRestaurant, restaurantRequest);
    return restaurantFromJson(response);
  }

  Future<Restaurant> getAllRestaurants() async{
    try{
      dynamic response = await apiService.getApi(AppUrl.getAllRestaurant);
      return restaurantFromJson(response);
    }catch(exception){
      rethrow;
    }
  }
}
//repo  use service