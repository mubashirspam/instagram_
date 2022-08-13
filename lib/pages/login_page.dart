import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/constant/dimension.dart';
import 'package:instagram/constant/image_icons.dart';
import 'package:instagram/main.dart';
import 'package:instagram/pages/signup_page.dart';
import 'package:instagram/tab_pages/tab.dart';

import '../widgets/divider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;
  bool isError = false;
  bool _isButtonDisabled = false;

  // @override
  // void initState() {
  //   _isButtonDisabled = true;
  // }

  Future signIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      //    setState(() {
      //   isLoading = false;
      // });
      showDialog(
        barrierDismissible: false,
          context: context,
          builder: (context) => Container(
                height: Dimension.w250,
                width: Dimension.w150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.pw15),
                    color: Colors.amber),
                child: Column(
                  children: [Text("$e")],
                ),
              ));

      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  void SignUproute() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Dimension.init(context: context);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.all(Dimension.pw30),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: Dimension.pw40),
                child: Image(
                  width: Dimension.w150,
                  fit: BoxFit.cover,
                  image: AssetImage(Img.logo),
                ),
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
                    hintText: "Phone number, email or username",
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: _passwordController,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: Dimension.pw10, horizontal: Dimension.pw10),
                    hintText: "Password",
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
                          isLoading = true;
                        });

                        signIn();
                      },
                child: isLoading
                    ? SizedBox(
                        height: Dimension.pw25,
                        width: Dimension.pw25,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
              ),
              SizedBox(
                height: Dimension.pw15,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                    text: "Forgot your login details?",
                    children: [
                      TextSpan(
                          // recognizer: TapGestureRecognizer()..onTap=widget.onClickedForgot,
                          style: TextStyle(color: Colors.blue, fontSize: 13),
                          text: "Get help with login")
                    ]),
              ),
              Row(
                children: [
                  Expanded(child: dividerGrey()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
                    child: Text(
                      "Or",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  Expanded(
                    child: dividerGrey(),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(),
              ),
              dividerGrey(),
              SizedBox(
                height: Dimension.pw30,
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                      text: "Don`t have an account?",
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = SignUproute,
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                            text: "Signup")
                      ]),
                ),

                //  Wrap(
                //   children: [
                //     Text(
                //       "Don`t have an account?",
                //       style: TextStyle(color: Colors.grey, fontSize: 13),
                //     ),
                //     GestureDetector(
                //       onTap: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => const SignUpPage(),
                //         ),
                //       ),
                //       child: Text(
                //         "Signup.",
                //         style: TextStyle(color: Colors.blue, fontSize: 13),
                //       ),
                //     )
                //   ],
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
