import 'dart:async';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/constant/dimension.dart';
import 'package:instagram/pages/signup_page.dart';
import 'package:instagram/tab_pages/tab.dart';
import 'package:instagram/widgets/aler.dart';

class EmailVarifiationPage extends StatefulWidget {
  const EmailVarifiationPage({Key? key}) : super(key: key);

  @override
  State<EmailVarifiationPage> createState() => _EmailVarifiationPageState();
}

class _EmailVarifiationPageState extends State<EmailVarifiationPage> {
  bool isEmailVarifide = false;
  Timer? timer;

  Future sendvarification() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
    } on FirebaseAuthException catch (error) {
      Utlis.showSnackBar(error.message);
    }
  }

  Future checkEmailVaryfide() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVarifide = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVarifide) timer?.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isEmailVarifide = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVarifide) {
      sendvarification();

      timer = Timer.periodic(Duration(seconds: 3), (_) {
        checkEmailVaryfide();
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isEmailVarifide
        ? TabPage()
        : Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    timer?.cancel();
                  });

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
              ),
              title: Text(
                "Varyfi email",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Email sended"),
                TextButton(
                  onPressed: () {
                    //use timer
                    // sendvarification();
                  },
                  child: Text("resend"),
                ),
                SizedBox(
                  height: Dimension.pw50,
                  child: TextButton(
                      onPressed: () => FirebaseAuth.instance.signOut(),
                      child: Text("Cancel")),
                )
              ],
            ),
          );
  }
}
