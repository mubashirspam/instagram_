import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram/view/auth/authentication.dart';
import 'package:instagram/view/auth/login_page.dart';


import 'package:instagram/view/tab_pages/tab.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram/view/widgets/aler.dart';
import 'package:provider/provider.dart';

import 'controller/provider/post_provider.dart';
import 'controller/provider/user_provider.dart';
import 'view/widgets/aler.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PostProvider(),
        ),
      ],
      child: MaterialApp(
        scaffoldMessengerKey: messengerKey,
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'instagram',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.black,
          colorScheme: const ColorScheme.light(primary: Colors.black),
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              headline2: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
              bodyText1: TextStyle(
                  color: Color(0xff1FA1FF),
                  fontSize: 13,
                  fontWeight: FontWeight.bold)),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        ),
        home: const Authentication(),
      ),
    );
  }
}
