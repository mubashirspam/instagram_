import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebaseAuth = FirebaseAuth.instance.currentUser!;

var db = FirebaseFirestore.instance;

CollectionReference usersData =
    FirebaseFirestore.instance.collection('users');




// List<UserModel> _userDetails = [
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "1",
  //   name: "Bold_pilot",
  //   email: "bold@gimail.com",
  // ),
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "2",
  //   name: "asna",
  //   email: "asna@gimail.com",
  // ),
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "3",
  //   name: "najiya",
  //   email: "najiya@gimail.com",
  // ),
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "4",
  //   name: "muz",
  //   email: "muz@gimail.com",
  // ),
  // ///
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "5",
  //   name: "ibru",
  //   email: "ibru@gimail.com",
  // ),
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "6",
  //   name: "suku",
  //   email: "suku@gimail.com",
  // ),
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "7",
  //   name: "muhsin",
  //   email: "muhsin@gimail.com",
  // ),
  // UserModel(
  //   follower: 0,
  //   following: 0,
  //   id: "8",
  //   name: "anshad",
  //   email: "anshad@gimail.com",
  // ),
// ];
