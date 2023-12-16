
import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  int id;
  String name;
  String tagline;
  String firstBrewed;
  String description;
  String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.tagline,
    required this.firstBrewed,
    required this.description,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    tagline: json["tagline"],
    firstBrewed: json["first_brewed"],
    description: json["description"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "tagline": tagline,
    "first_brewed": firstBrewed,
    "description": description,
    "image_url": imageUrl,
  };
}
