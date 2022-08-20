import 'package:flutter/material.dart';
import 'package:instagram/model/comments_model.dart';

class PostModel with ChangeNotifier {
  final String id;
  final DateTime uploadTime;
  final String user_name;
  final String user_id;
  final List images;
  final String caption;
  final int like;
  final List <CommetModel> comments;
  PostModel({
    required this.uploadTime,
    required this.caption,
    required this.user_name,
    required this.comments,
    required this.id,
    required this.images,
    required this.like,
    required this.user_id,
  });
}
