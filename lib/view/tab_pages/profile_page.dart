import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/view/widgets/avatar_widgets.dart';
import 'package:instagram/view/widgets/button.dart';
import 'package:instagram/view/widgets/gridview_widgets.dart';
import 'package:instagram/view/widgets/story_widget.dart';
import 'package:provider/provider.dart';
import '../../controller/provider/user_provider.dart';
import '../constant/dimension.dart';
import '../constant/image_icons.dart';

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

  bool _isInit = true;
  bool _isLoading = false;

  Future<void> _refreshData(BuildContext context) async {
    await Provider.of<UserProvider>(context, listen: false)
        .fetchAndSetCurrentUser();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<UserProvider>(context)
          .fetchAndSetCurrentUser()
          .then((_) => setState(() {
                _isLoading = false;
              }));
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final postgridHight =
        ((Dimension.flullScreen) / 3) * ((postItems.length) / 3).ceil() +
            ((postItems.length) / 3).ceil() * 1;

    final tsggridHight =
        ((Dimension.flullScreen) / 3) * ((tagItems.length) / 3).ceil() +
            ((tagItems.length) / 3).ceil() * 1;

    final profileData =
        Provider.of<UserProvider>(context, listen: false).currentUserDetails;

    return _isLoading
        ? Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.purple.shade100,
              color: Colors.purple,
            ),
          )
        : RefreshIndicator(
            onRefresh: () => _refreshData(context),
            child: Container(
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
                          "${context.watch<UserProvider>().currentUserDetails.first.email}",
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

                        /// setting action sheet.........................

                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                      ),
                                      color: Colors.white),
                                  height: Dimension.fulscreenHeight,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: Dimension.pw15),
                                          height: 3,
                                          width: Dimension.pw40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color.fromARGB(
                                                  255, 130, 129, 129)),
                                        ),
                                      ),
                                      settingsList(Img.settings, "Settings"),

                                      settingsList(Img.settings, "Settings"),
                                      settingsList(Img.settings, "Settings"),
                                      settingsList(Img.settings, "Settings"),
                                      ListTile(
                                        onTap: () {},
                                        title: Text("Get dat"),
                                      ),

                                      // ListTile(
                                      //   onTap: () => createUser(),
                                      //   title: Text("Add data to base"),
                                      // ),

                                      ListTile(
                                        onTap: () {
                                          FirebaseAuth.instance.signOut();
                                          Navigator.pop(context);
                                        },
                                        title: Text("logout"),
                                      ),
                                      // GestureDetector(
                                      //     onTap: () {
                                      //       FirebaseAuth.instance.signOut();
                                      //       Navigator.pop(context);
                                      //     },
                                      //     child: settingsList(Img.shop, "Logout")),
                                    ],
                                  ),
                                );
                              },
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
                                AvatarWidget(
                                  height: Dimension.w75 + Dimension.pw10,
                                  width: Dimension.w75 + Dimension.pw10,
                                  image: Img.avatarnetwork,
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.center,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      "1200",
                                      style:
                                          Theme.of(context).textTheme.headline1,
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
                                      profileData.first.follower.toString(),
                                      style:
                                          Theme.of(context).textTheme.headline1,
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
                                      profileData.first.following.toString(),
                                      style:
                                          Theme.of(context).textTheme.headline1,
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
                                  "${profileData.first.name} 🙈🙈",
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
                                      itemBuilder: (context, index) =>
                                          StoryWidget(
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
            ),
          );
  }

  Widget settingsList(String icon, String title) {
    return SizedBox(
      height: Dimension.w50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
            child: SvgPicture.asset(icon),
          ),
          Expanded(
            child: Text(title),
          )
        ],
      ),
    );
  }
}
