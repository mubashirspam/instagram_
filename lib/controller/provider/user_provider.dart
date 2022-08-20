import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/user_model.dart';
import 'package:instagram/view/constant/constants.dart';
import 'package:instagram/view/widgets/aler.dart';

class UserProvider with ChangeNotifier {
  CollectionReference usersData =
      FirebaseFirestore.instance.collection('users');

  List<UserModel> _userDetails = [];
  List<UserModel> _currentUserDetails = [];

  List<UserModel> get userDetails {
    return [..._userDetails];
  }

  List<UserModel> get currentUserDetails {
    return [..._currentUserDetails];
  }
////////////////----create user profile ----////////////////////////////////////////

  Future createUser(
      {required String user,
      required String name,
      required String email}) async {
    final docUser = usersData.doc(user);

    // print("currentUserUid ${currentUserUid}");

    final _userDetails = UserModel(
      id: user,
      name: name,
      email: email,
      follower: 0,
      following: 0,
    );

    final json = _userDetails.toJson();

    try {
      await docUser.set(json);
    } on FirebaseAuthException catch (e) {
      Utlis.showSnackBar(e.message);
    }
  }

/////////////////----fetch user details from firestore ----//////////////////////////

  Future<void> fetchAndSetCurrentUser() async {
    final _uid = await FirebaseAuth.instance.currentUser!.uid;
    final List<UserModel> loadedData = [];
    try {
      await usersData.doc(_uid).get().then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          print("data${data}");

          loadedData.add(UserModel(
            id: doc.id,
            follower: data["follower"],
            following: data["following"],
            name: data["name"],
            email: data["email"],
          ));
          // ...
        },
      );

      _currentUserDetails = loadedData;
      notifyListeners();
    } catch (error) {
      print(error);
      // return;
      throw error;
    }
  }
/////////////////----fetch all user details from firestore ----//////////////////////////

  Future<void> fetchAndSetUsers() async {
    // CollectionReference users =
    //     FirebaseFirestore.instance.collection('BloodStatusCards');

    try {
      final List<UserModel> loadedData = [];
      var response = await usersData.get().then((value) => value.docs);

      response.forEach((element) {
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;

        loadedData.add(UserModel(
          id: element.id,
          follower: data["follower"],
          following: data["following"],
          name: data["name"],
          email: data["email"],
        ));
      });

      _userDetails = loadedData;
      notifyListeners();
    } catch (error) {
      print(error);
      // return;
      throw error;
    }
  }
}
