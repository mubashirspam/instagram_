import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constant/dimension.dart';
import 'package:instagram/constant/image_icons.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
            child: SizedBox(
              height: Dimension.w50,
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: Dimension.pw10),
                    height: Dimension.pw30,
                    width: Dimension.pw30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: NetworkImage(Img.avatarnetwork))),
                  ),
                  Text("bold_pilot"),
                  const Spacer(),
                  Image(
                    width: Dimension.pw20,
                    image: const AssetImage(Img.more),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: Dimension.flullScreen,
            height: Dimension.flullScreen,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  image,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
            child: SizedBox(
              height: Dimension.pw50,
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: Dimension.pw10),
                    child: Image(
                      width: Dimension.pw20,
                      image: const AssetImage(Img.heart),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: Dimension.pw10),
                    child: Image(
                      width: Dimension.pw20,
                      image: const AssetImage(Img.comment),
                    ),
                  ),
                  Image(
                    width: Dimension.pw20,
                    image: const AssetImage(Img.share),
                  ),
                  Expanded(
                    child: DotsIndicator(
                        dotsCount: 4,
                        position: 2,
                        decorator: DotsDecorator(
                            color: Colors.grey, activeColor: Colors.blue)),
                  ),
                  SizedBox(
                    width: Dimension.pw30,
                  ),
                  Image(
                    width: Dimension.pw20,
                    image: const AssetImage(Img.bookmark),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Dimension.pw15,
            ),
            child: Text(
              "100 Likes",
              style: TextStyle(
                fontSize: Dimension.f15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimension.pw15, vertical: Dimension.pw5),
            child: const Text(
              "Bold_Pilot Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more ",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Dimension.pw15,
              bottom: Dimension.pw5,
            ),
            child: const Text(
              "view all 8 Comments",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Dimension.pw15,
              bottom: Dimension.pw5,
            ),
            child: const Text(
              "2 hours ago",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
