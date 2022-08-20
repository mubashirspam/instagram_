

import 'package:flutter/material.dart';

import 'package:instagram/view/constant/dimension.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.buttenName, this.width})
      : super(key: key);

  final String buttenName;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: Dimension.pw15),
        height: 30,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: const Color(0xffCBCBCB), width: 1),
        ),
        child: Center(
          child: Text(
            buttenName,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
