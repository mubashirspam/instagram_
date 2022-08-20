import 'package:flutter/material.dart';

import 'package:instagram/view/constant/dimension.dart';
import 'package:instagram/view/widgets/avatar_widgets.dart';

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
          AvatarWidget(image: image),
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
