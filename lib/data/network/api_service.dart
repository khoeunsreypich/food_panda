import 'dart:convert';
import 'dart:io';

import 'package:food_panda/data/app_exception.dart';
import 'package:http/http.dart ' as http;

class ApiService {
  dynamic responseJson;

  Future<dynamic> postRestaurant(url,data) async{
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse(url));
    request.body = json.encode(data);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }


  Future<dynamic> uploadImage(image,url) async{
    http.StreamedResponse? response;
    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.files.add(await http.MultipartFile.fromPath('files', image));
      response = await request.send();
      return returnResponse(response);
    }on Exception{
     //throw FetchDataException(response!.reasonPhrase);
      throw FetchDataException(response!.reasonPhrase.toString());
    }

  }

  Future<dynamic> getApi(url) async {
    http.StreamedResponse? response;
    try {
      var request = http.Request('Get', Uri.parse(url));
      response = await request.send();
      return returnResponse(response);
    } on SocketException {
      throw FetchDataException(response!.reasonPhrase.toString());
    }
  }

  returnResponse(http.StreamedResponse response) async {
    print('response ${response.reasonPhrase}');
    switch (response.statusCode) {
      case 200:
        return await response.stream.bytesToString();
      case 500:
      case 400:
    }
  }
}

