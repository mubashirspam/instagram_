import 'package:flutter/material.dart';

import '../constant/dimension.dart';
import '../constant/image_icons.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
      height: Dimension.pw50,
      width: double.maxFinite,
      child: Row(
        children: [
          SizedBox(
            height: Dimension.pw30,
            child: const Image(
              image: AssetImage(Img.logo),
            ),
          ),
          const Spacer(),
          Image(
            height: Dimension.pw25,
            image: const AssetImage(Img.add),
          ),
          SizedBox(
            width: Dimension.pw20,
          ),
          Image(
            height: Dimension.pw25,
            image: const AssetImage(Img.heart),
          ),
          SizedBox(
            width: Dimension.pw20,
          ),
          Image(
            height: Dimension.pw25,
            image: const AssetImage(Img.share),
          ),
        ],
      ),
    );
  }
}
