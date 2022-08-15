import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/user_model.dart';

class UserProvider with ChangeNotifier {
  // var db = FirebaseFirestore.instance;

  List<UserModel> _userDetails = [
    UserModel(
      id: "1",
      name: "Bold_pilot",
      email: "bold@gimail.com",
    ),
    UserModel(
      id: "2",
      name: "asna",
      email: "asna@gimail.com",
    ),
    UserModel(
      id: "3",
      name: "najiya",
      email: "najiya@gimail.com",
    ),
    UserModel(
      id: "4",
      name: "muz",
      email: "muz@gimail.com",
    ),
    UserModel(
      id: "5",
      name: "ibru",
      email: "ibru@gimail.com",
    ),
    UserModel(
      id: "6",
      name: "suku",
      email: "suku@gimail.com",
    ),
    UserModel(
      id: "7",
      name: "muhsin",
      email: "muhsin@gimail.com",
    ),
    UserModel(
      id: "8",
      name: "anshad",
      email: "anshad@gimail.com",
    ),
  ];

  List<UserModel> get userDetails {
    return [..._userDetails];
  }

  // Future getData() async {
  //   try {
  //     await db.collection("user").get().then((event) {
  //       for (var doc in event.docs) {
  //         print("${doc.id} => ${doc.data()}");
  //       }
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
