import 'package:flutter/material.dart';

import 'package:instagram/constant/dimension.dart';


class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key, required this.image}) : super(key: key); 

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.w70,
      margin: EdgeInsets.only(
        left: Dimension.pw15,
        top: Dimension.pw15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            height: Dimension.pw55 + Dimension.pw10,
            width: Dimension.pw55 + Dimension.pw10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffc932c3), Color(0xffef8732)],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image))),
            ),
          ),
          SizedBox(
            height: Dimension.pw15,
            width: Dimension.pw70,
            child: const Text("bold_pilot"),
          )
        ],
      ),
    );
  }
}
