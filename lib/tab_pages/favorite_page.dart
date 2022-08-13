import 'package:flutter/material.dart';

import '../constant/dimension.dart';
import '../widgets/appbars.dart';

class HeartPage extends StatelessWidget {
  const HeartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Dimension.pw50),
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        children: [
          const AppBars(),
          Container(
            height: Dimension.w100,
            width: double.maxFinite,
            padding: EdgeInsets.only(left: Dimension.pw15),
          ),

          Text("HeartPage")
        ],
      ),
    );
  }
}
