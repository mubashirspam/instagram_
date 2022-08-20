import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
import 'package:instagram/model/user_model.dart';
import 'package:instagram/view/widgets/aler.dart';
import 'package:provider/provider.dart';
import '../../controller/provider/user_provider.dart';
import '../constant/constants.dart';
import '../constant/dimension.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool _isButtonDisabled = false;
  bool _isLoading = false;
  bool _passwordVisible = true;

  // sign up function---------------------------------------

  Future signUp() async {
    final _isValid = _formKey.currentState!.validate();
    if (!_isValid) return;

    setState(() {
      _isLoading = true;
    });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      final uid = await FirebaseAuth.instance.currentUser!.uid;

      await Provider.of<UserProvider>(context, listen: false).createUser(
          user: uid, name: _nameController.text, email: _emailController.text);

      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (error) {
      setState(() {
        _isLoading = false;
      });
      Utlis.showSnackBar(error.message);
    }
  }

  // upload user details to database ---------------------------------------
  // Future<void> _refreshData(BuildContext context) async {
  //   await Provider.of<UserProvider>(context, listen: false)
  //       .createUser(user: "", name: "", email: "");
  // }

  // Future createUser(
  //     {required UserModel user,
  //     required String name,
  //     required String email}) async {
  //   final docUser = db.collection("users").doc(user.id);

  //   // print("currentUserUid ${currentUserUid}");

  //   final _userDetails = UserModel(
  //     id: user.id,
  //     name: name,
  //     email: email,
  //     follower: 0,
  //     following: 0,
  //   );

  //   final json = _userDetails.toJson();

  //   try {
  //     await docUser.set(json);
  //   } on FirebaseAuthException catch (e) {
  //     Utlis.showSnackBar(e.message);
  //   }
  // }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.all(Dimension.pw25),
        child: userName(),
      ),
    );
  }

  Widget userName() => Form(
        key: _formKey,
        child: Column(
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

//// uswr name..............................................................................

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty && value.endsWith("@gmail.com") == false) {
                  return 'choose valid email';
                }

                return null;
              },
              controller: _emailController,
              onSaved: ((newValue) {}),
              cursorWidth: 1,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Dimension.pw10, horizontal: Dimension.pw10),
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  )),
            ),
            SizedBox(
              height: Dimension.pw15,
            ),

            //// password..............................................................................

            TextFormField(
              cursorWidth: 1,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pleas enter valid password';
                }
                if (value.length < 6) {
                  return "please enter atlist 6 charector";
                }

                return null;
              },
              controller: _passwordController,
              obscureText: _passwordVisible,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      _passwordVisible = !_passwordVisible;
                    }),
                    child: Icon(
                      _passwordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                  ),
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
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Name';
                }

                return null;
              },
              controller: _nameController,
              // onSaved: ((newValue) {

              // }),
              cursorWidth: 1,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: Dimension.pw10, horizontal: Dimension.pw10),
                  hintText: "username",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  )),
            ),
            SizedBox(
              height: Dimension.pw15,
            ),

// sign up button ---------------------------------------------

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
                  : () {
                      signUp();
                      // createUser(
                      //     "dd", _nameController.text, _emailController.text);
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
        ),
      );
}
