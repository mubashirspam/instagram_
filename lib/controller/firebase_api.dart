import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram/model/user_model.dart';

import '../view/constant/constants.dart';
import '../view/widgets/aler.dart';

class FirebaseApi {
  static Future createUser(String name, email) async {
    final docUser = db.collection("users").doc();

    final user = UserModel(
      id: docUser.id,
      name: name,
      email: email,
      follower: 0,
      following: 0,
    );

    final json = user.toJson();

    try {
      await docUser.set(json);
    } on FirebaseAuthException catch (e) {
      Utlis.showSnackBar(e.message);
    }
  }

  /////////////////----fetch user details from firestore ----////////////////////////////////////////

  // Future<void> fetchAndSetProducts() async {
  //   try {
  //     final List<UserModel> loadedData = [];
  //     var response = await usersData.get().then((value) => value.docs);

  //     response.forEach((element) {
  //       Map<String, dynamic> data = element.data() as Map<String, dynamic>;

  //       loadedData.add(UserModel(
  //           id: element.id,
  //           name: data['name'],
  //           email: data["email"],
  //         follower: data["follower"],
  //         following: data["following"],
            
            
  //           ));
  //     });

  //     _items = loadedData;
  //     notifyListeners();
  //   } catch (error) {
  //     print(error);
  //     // return;
  //     throw error;
  //   }
  // }

  // static Future updateWork(WorkModel workModel) async {
  //   final docTodo =
  //       FirebaseFirestore.instance.collection('works').doc(workModel.id);

  //   await docTodo.update(workModel.toJson());
  // }

  // static Future deleteWork(WorkModel workModel) async {
  //   final docTodo =
  //       FirebaseFirestore.instance.collection('works').doc(workModel.id);

  //   await docTodo.delete();
  // }
}
