import 'package:food_panda/data/network/api_service.dart';
import 'package:food_panda/res/app_url.dart';

class ImageRepository {
  var _apiService = ApiService();
  Future<dynamic> uploadImage(image) async{
    var response = await _apiService.uploadImage(image, AppUrl.uploadImage);

  }
}