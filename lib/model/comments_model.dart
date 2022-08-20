import 'package:flutter/material.dart';

class CommetModel with ChangeNotifier {
  final String commenter_id;
  final String commenter_name;
  final String comment;
  final int like;
  final DateTime time;
  final String id;

  CommetModel({
    required this.commenter_id,
    required this.commenter_name,
    required this.like,
    required this.comment,
    required this.time,
    required this.id,
  });
  Map<String, dynamic> toJson() => {
        id: id,
        commenter_name: commenter_name,
        commenter_id: commenter_id,
        comment: comment,
        "like": like,
        "time": time,
      };
}
