import 'package:flutter/material.dart';

class PostModel with ChangeNotifier {
  final String id;
  final String name;
  final List link;
  final String caption;
  final int like;
  final List comments;
  PostModel({

    required this.caption,
    required this.name,
    required this.link,
    required this.like,
    required this.id,
    required this.comments,

  });
}
