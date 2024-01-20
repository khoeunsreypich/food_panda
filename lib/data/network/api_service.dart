import 'dart:convert';
import 'dart:io';

import 'package:food_panda/data/app_exception.dart';
import 'package:http/http.dart ' as http;

class ApiService {
  dynamic responseJson;

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

//
//     try {
//
//        var response = await http.get(Uri.parse(url));
//        responseJson = returnResponse(response);
//     } on SocketException {
//       throw FetchDataException('No internet connection');
//     }
//     return responseJson;
//   }
// }
//
// dynamic returnResponse(http.Response response) {
//   switch (response.statusCode){
//     case 200 :
//       return jsonDecode(response.body);
//     case 500 :
//       throw BadRequestException('Please check your request body');
//   }
//
//
// }
