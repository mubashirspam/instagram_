import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/widgets/button.dart';
import 'package:instagram/widgets/gridview_widgets.dart';
import 'package:instagram/widgets/story_widget.dart';

import '../constant/dimension.dart';
import '../constant/image_icons.dart';
import '../widgets/appbars.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
  List<String> tagItems = [
    Img.a2,
    Img.a7,
    Img.a6,
    Img.a5,
    Img.a3,
  ];

  int currentindex = 0;

  void bottomSheet() {}

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    final postgridHight =
        ((Dimension.flullScreen) / 3) * ((postItems.length) / 3).ceil() +
            ((postItems.length) / 3).ceil() * 1;

    final tsggridHight =
        ((Dimension.flullScreen) / 3) * ((tagItems.length) / 3).ceil() +
            ((tagItems.length) / 3).ceil() * 1;

    return Container(
      padding: EdgeInsets.only(top: Dimension.pw50),
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
            height: Dimension.pw50,
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  "${user.email}",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const Spacer(),
                SizedBox(
                  width: Dimension.pw20,
                ),
                Image(
                  height: Dimension.pw25,
                  image: const AssetImage(Img.add),
                ),
                SizedBox(
                  width: Dimension.pw20,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) => Container(
                        height: Dimension.w250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                FirebaseAuth.instance.signOut();
                                Navigator.pop(context);
                              },
                              child: Text("Logout"),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: Dimension.pw25,
                    width: Dimension.pw25,
                    child: Image(
                      image: const AssetImage(Img.burger),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.maxFinite,
              child: ListView(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                addAutomaticKeepAlives: false,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: Dimension.pw15, right: Dimension.pw25),
                    height: 100,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          height: Dimension.w100 - Dimension.pw10,
                          width: Dimension.w100 - Dimension.pw10,
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
                                border:
                                    Border.all(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(200),
                                image: const DecorationImage(
                                    image: NetworkImage(Img.avatarnetwork))),
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Text(
                              "1200",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            const Text("Posts"),
                          ],
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Text(
                              "430k",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            const Text("Follower"),
                          ],
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Text(
                              "1345",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            const Text("Following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                        left: Dimension.pw15,
                        right: Dimension.pw15,
                        top: Dimension.pw5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${user.email} 🙈🙈",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt #hashtag",
                        ),
                        const Buttons(buttenName: "Edit Profile"),
                        SizedBox(
                          height: Dimension.w100,
                          width: double.maxFinite,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: tagItems.length,
                              itemBuilder: (context, index) => StoryWidget(
                                    image: tagItems[index],
                                  )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.pw10),
                          child: SizedBox(
                            height: Dimension.pw45,
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () => setState(() {
                                        currentindex = 0;
                                      }),
                                      child: SvgPicture.asset(
                                        Img.gridsvg,
                                        color: currentindex == 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Center(
                                  child: GestureDetector(
                                      onTap: () => setState(() {
                                            currentindex = 1;
                                          }),
                                      child: SvgPicture.asset(
                                        Img.tag,
                                        color: currentindex == 1
                                            ? Colors.black
                                            : Colors.grey,
                                      )),
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: currentindex == 0
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: currentindex == 1
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        currentindex == 0
                            ? GridViewWidget(
                                physics: NeverScrollableScrollPhysics(),
                                gridHight: postgridHight,
                                items: postItems)
                            : GridViewWidget(
                                physics: NeverScrollableScrollPhysics(),
                                gridHight: tsggridHight,
                                items: tagItems),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
