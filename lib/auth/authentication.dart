import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/email_varify_page.dart';
import 'package:instagram/pages/login_page.dart';
import 'package:instagram/tab_pages/tab.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return Center(child: CircularProgressIndicator());
        // } else if (snapshot.hasError) {
        //   return Center(
        //     child: Text("somthimg went wrond"),
        //   );
        // } else if (snapshot.hasData) {
        //   TabPage();
        // }

      StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {

          return TabPage();
          // return EmailVarifiationPage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
