import 'package:flutter/material.dart';

final messengerKey = GlobalKey<ScaffoldMessengerState>();

class Utlis {
  static showSnackBar(String? text) {
    if (text == null) return;

    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.black,
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  // static showdiloge (BuildContext context, String? text){
  //  final diloge =  showDialog<String>(
  //       context: context,
  //       builder: (BuildContext context) => AlertDialog(
  //         title: const Text('AlertDialog Title'),
  //         content:  Text(text.toString()),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () => Navigator.pop(context, 'Cancel'),
  //             child: const Text('Cancel'),
  //           ),
  //           TextButton(
  //             onPressed: () => Navigator.pop(context, 'OK'),
  //             child: const Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );

  // }
}
