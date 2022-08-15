import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  final String id;
  final String name;
  final String email;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
  });
}
