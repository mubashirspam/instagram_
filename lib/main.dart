import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram/auth/authentication.dart';
import 'package:instagram/pages/login_page.dart';

import 'package:instagram/tab_pages/tab.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  print('-- WidgetsFlutterBinding.ensureInitialized');
  await Firebase.initializeApp();
  // print('-- main: Firebase.initializeApp');
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'instagram',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        colorScheme: const ColorScheme.light(primary: Colors.black),
        textTheme: const TextTheme(
            headline1: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
                color: Color(0xff1FA1FF),
                fontSize: 13,
                fontWeight: FontWeight.bold)),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      home: const Authentication(),
    );
  }
}
