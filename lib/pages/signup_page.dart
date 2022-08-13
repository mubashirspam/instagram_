import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/main.dart';

import '../constant/dimension.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonDisabled = false;
  bool _isLoading = false;

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  void next() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          padding: EdgeInsets.all(Dimension.pw25),
          child: userName()),
    );
  }

  Widget userName() => Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: Dimension.pw30, bottom: Dimension.pw15),
            child: Text(
              "Choose username",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            "You can always changes it later",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          SizedBox(
            height: Dimension.pw15,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller: _emailController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: Dimension.pw10, horizontal: Dimension.pw10),
                hintText: "username",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
          ),
          SizedBox(
            height: Dimension.pw15,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller: _passwordController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: Dimension.pw10, horizontal: Dimension.pw10),
                hintText: "password",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
          ),
          SizedBox(
            height: Dimension.pw15,
          ),
          TextButton(
            style: TextButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimension.pw10)),
                backgroundColor:
                    _isButtonDisabled ? Colors.blue[100] : Colors.blue,
                minimumSize: Size(Dimension.flullScreen, Dimension.w50)),
            onPressed: _isButtonDisabled
                ? () {}
                : () async {
                    setState(() {
                      _isLoading = true;
                    });

                    signUp();
                  },
            child: _isLoading
                ? SizedBox(
                    height: Dimension.pw25,
                    width: Dimension.pw25,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    "Signup",
                    style: TextStyle(color: Colors.white),
                  ),
          ),
        ],
      );
}
