import 'package:food_panda/data/network/api_service.dart';
import 'package:food_panda/res/app_url.dart';

import '../../../models/restaurant.dart';

class RestaurantRepository {
  var apiService = ApiService();
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