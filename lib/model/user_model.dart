
import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  final String id;
  final String name;
  final String email;
  final int follower;
  final int following;

  UserModel({
    required this.id,
    required this.follower,
    required this.following,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "image_link": "",
        "follower": follower,
        "following": following,
      };

  static UserModel fromJson(Map<dynamic, dynamic> json) => UserModel(
      id: json["id"],
      follower: json["follower"],
      following: json["following"],
      name: json["name"],
      email: json["email"]);


}
