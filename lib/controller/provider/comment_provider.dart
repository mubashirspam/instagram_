import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/comments_model.dart';
import 'package:instagram/view/widgets/aler.dart';

class CommentProvider with ChangeNotifier {
  CollectionReference commentsData =
      FirebaseFirestore.instance.collection('comments');

  List<CommetModel> _currentUsercomment = [
    CommetModel(
        id: "",
        commenter_id: "commenter_id",
        commenter_name: "commenter_name",
        like: 100,
        comment: "comment 🥰",
        time: DateTime.now()),
    CommetModel(
        id: "",
        commenter_id: "commenter_id",
        commenter_name: "commenter_name",
        like: 100,
        comment: "comment 🥰",
        time: DateTime.now()),
    CommetModel(
        id: "",
        commenter_id: "commenter_id",
        commenter_name: "commenter_name",
        like: 100,
        comment: "comment 🥰",
        time: DateTime.now()),
  ];

  List<CommetModel> get currentUsercomment {
    return [..._currentUsercomment];
  }

  Future addComment(
      {required String user,
      required String name,
      required String email}) async {
    final docUser = commentsData.doc(user);

    final _commentDetails = CommetModel(
      id: "",
      comment: "",
      commenter_id: "",
      commenter_name: "",
      like: 0,
      time: DateTime.now(),
    );

    final json = _commentDetails.toJson();

    try {
      await docUser.set(json);
    } on FirebaseAuthException catch (e) {
      Utlis.showSnackBar(e.message);
    }
  }

  Future<void> fetchAndSetCurrentUserComments() async {
    // final _uid = await FirebaseAuth.instance.currentUser!.uid;
    final List<CommetModel> loadedData = [];
    try {
      await commentsData.doc("_uid").get().then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          print("data${data}");

          loadedData.add(CommetModel(
              id: doc.id,
              comment: data["comment"],
              commenter_id: data["commenter_id"],
              commenter_name: data["commenter_name"],
              like: data["like"],
              time: data["time"]));
          // ...
        },
      );

      _currentUsercomment = loadedData;
      notifyListeners();
    } catch (error) {
      print(error);
      // return;
      throw error;
    }
  }
}
