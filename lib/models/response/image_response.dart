// To parse this JSON data, do
//
//     final imageResponse = imageResponseFromJson(jsonString);

import 'dart:convert';

List<ImageResponse> imageResponseFromJson(String str) => List<ImageResponse>.from(json.decode(str).map((x) => ImageResponse.fromJson(x)));

String imageResponseToJson(List<ImageResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageResponse {
  int? id;
  String? name;
  String? url;

  ImageResponse({
    this.id,
    this.name,
    this.url,
  });

  factory ImageResponse.fromJson(Map<String, dynamic> json) => ImageResponse(
    id: json["id"],
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "url": url,
  };
}
