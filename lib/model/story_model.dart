import 'package:flutter/material.dart';

class StoryModel with ChangeNotifier {
  final num id;
  final String name;

  StoryModel({
    required this.id,
    required this.name,
  });
  
}