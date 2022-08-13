import 'package:flutter/material.dart';

import 'package:instagram/widgets/post_card.dart';

import '../constant/dimension.dart';
import '../constant/image_icons.dart';
import '../widgets/appbars.dart';
import '../widgets/divider.dart';
import '../widgets/story_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> postItems = [
      Img.avatarnetwork,
      Img.a2,
      Img.a3,
      Img.a4,
      Img.a5,
      Img.a6,
      Img.a7,
      Img.a8,
      Img.a9,
      Img.a10,
    ];
    return Container(
      padding: EdgeInsets.only(top: Dimension.pw50),
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        children: [
          const AppBars(),
          Expanded(
              child: SizedBox(
            width: double.maxFinite,
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              children: [
                Container(
                  height: Dimension.w100,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: Dimension.pw15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: postItems.length,
                    itemBuilder: (context, index) => StoryWidget(
                      image: postItems[index],
                    ),
                  ),
                ),
                dividerGrey(),
                ListView.builder(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => PostCard(
                    image: postItems[index],
                  ),
                  itemCount: postItems.length,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
