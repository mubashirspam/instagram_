import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/user_model.dart';
import 'package:instagram/view/constant/constants.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Future getdata() async {
    final _uid = await FirebaseAuth.instance.currentUser!.uid;
    print("_uid  ${_uid}");
    try {
      final docRef = db.collection("users").doc(_uid);
      docRef.get().then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          print("data${data}");
          // ...
        },
        onError: (e) => print("Error getting document: $e"),
      );

    } catch (e) {
      print(e);
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("data"),
          TextButton(
              onPressed: () {
                getdata();
              },
              child: Text("get"))
        ],
      ),
    );
  }
}
