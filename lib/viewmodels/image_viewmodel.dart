import 'package:flutter/material.dart';
import 'package:food_panda/data/response/api_response.dart';
import 'package:food_panda/view/home/repository/image_repo.dart';

import '../models/response/image_response.dart';

class ImageViewModel extends ChangeNotifier{
  var _imageRepo = ImageRepository();
ApiResponse<dynamic> response = ApiResponse();
 setImageData(response){
   this.response=response;
   notifyListeners();
 }
  Future<dynamic> uploadImage(image) async {
    await _imageRepo.uploadImage(image).then((imageList) =>setImageData(ApiResponse.completed(imageList)) )
    .onError((error, stackTrace) => setImageData(ApiResponse.error(stackTrace.toString())));
    
  }
}