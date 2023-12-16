import 'package:flutter/foundation.dart';

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  User({this.id,this.name,this.username,this.email});
  factory User.fromJson(Map<String , dynamic> json){
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email']
    );
  }

}


