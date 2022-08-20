import 'package:flutter/material.dart';
import 'package:instagram/test.dart';
import 'package:instagram/view/constant/dimension.dart';
import 'package:instagram/view/tab_pages/favorite_page.dart';
import 'package:instagram/view/tab_pages/home_page.dart';
import 'package:instagram/view/tab_pages/profile_page.dart';
import 'package:instagram/view/tab_pages/relas_page.dart';
import 'package:instagram/view/tab_pages/search_page.dart';
import 'package:instagram/view/widgets/avatar_widgets.dart';

import '../constant/image_icons.dart';

ValueNotifier<int> selectedIndexNorifier = ValueNotifier<int>(0);

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  static const List<Widget> widgetOptions = <Widget>[
    HomePage(),
    Test(),
    RealsPage(),
    HeartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    Dimension.init(context: context);
    return ValueListenableBuilder(
      valueListenable: selectedIndexNorifier,
      builder: (context, int index, _) => Scaffold(
        backgroundColor: Colors.white,
        body: widgetOptions.elementAt(index),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
            height: Dimension.w75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndexNorifier.value = 0;
                    });
                  },
                  child: Image(
                    height: Dimension.pw25,
                    image: const AssetImage(Img.home),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndexNorifier.value = 1;
                    });
                  },
                  child: Image(
                    height: Dimension.pw25,
                    image: const AssetImage(Img.search),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndexNorifier.value = 2;
                    });
                  },
                  child: Image(
                    height: Dimension.pw25,
                    image: const AssetImage(Img.reels),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndexNorifier.value = 3;
                    });
                  },
                  child: Image(
                    height: Dimension.pw25,
                    image: const AssetImage(Img.heart),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndexNorifier.value = 4;
                      });
                    },
                    child: AvatarWidget(
                      image: Img.avatarnetwork,
                      isStory: false,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
