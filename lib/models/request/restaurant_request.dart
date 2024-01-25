// To parse this JSON data, do
//
//     final restauranRequest = restauranRequestFromJson(jsonString);

import 'dart:convert';

RestaurantRequest restauranRequestFromJson(String str) => RestaurantRequest.fromJson(json.decode(str));

String restauranRequestToJson(RestaurantRequest data) => json.encode(data.toJson());

class RestaurantRequest {
  Data? data;

  RestaurantRequest({
    this.data,


  });

  factory RestaurantRequest.fromJson(Map<String, dynamic> json) => RestaurantRequest(
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class Data {
  String? name;
  String? category;
  int? discount;
  int? deliveryFee;
  int? deliveryTime;
  String? picture;

  Data({
    this.name,
    this.category,
    this.discount,
    this.deliveryFee,
    this.deliveryTime,
    this.picture,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    name: json["name"],
    category: json["category"],
    discount: json["discount"],
    deliveryFee: json["deliveryFee"],
    deliveryTime: json["deliveryTime"],
    picture: json["picture"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "category": category,
    "discount": discount,
    "deliveryFee": deliveryFee,
    "deliveryTime": deliveryTime,
    "picture": picture,
  };
}
