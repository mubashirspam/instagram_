import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/comments_model.dart';
import 'package:instagram/view/constant/dimension.dart';
import 'package:instagram/view/constant/image_icons.dart';

import '../pages/comments_page.dart';


class PostCard extends StatefulWidget {
  const PostCard({
    Key? key,
    required this.like,
    required this.name,
    required this.imagelink,
    required this.caption,
    required this.comments,
  }) : super(key: key);
  final int like;
  final String name;
  final List imagelink;
  final String caption;
  final List <CommetModel> comments;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  getlikes() {
    int value = widget.like;

    if (value < 10000) {
      return value;
    }
    if (value < 100000) {
      double result = value / 1000;
      return result.round().toString() + "k";
    }

    if (value < 1000000 * 10 * 100) {
      double result = value / 1000000;
      return result.round().toString() + "M";
    } else
      return "999M";
  }

  bool textOverflow = false;
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    // print("comments${widget.comments}");
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
                  Text(widget.name),
                  const Spacer(),
                  Image(
                    width: Dimension.pw20,
                    image: const AssetImage(Img.more),
                  ),
                ],
              ),
            ),
          ),

          /// post section/.................................................

          Container(
            width: Dimension.flullScreen,
            height: Dimension.flullScreen,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                  enableInfiniteScroll: true,
                  initialPage: 0,
                  aspectRatio: 1 / 1,
                  viewportFraction: 1,
                  height: Dimension.flullScreen),
              items: widget.imagelink.map((i) {
                // print("Imagelink.length ${widget.imagelink.length}");
                // int index;
                // if(widget.imagelink.length==index){}
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            i,
                          ),
                        ),
                      ),
                      width: Dimension.flullScreen,
                    );
                  },
                );
              }).toList(),
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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            liked = !liked;
                          });
                        },
                        child: Icon(
                          liked ? Icons.favorite : Icons.favorite_outline,
                          size: Dimension.pw20,
                          color: liked ? Colors.red : Colors.black,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: Dimension.pw10),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommentsPage(
                              comments: widget.comments,
                              name: widget.name,
                              caption: widget.caption),
                        ),
                      ),
                      child: Image(
                        width: Dimension.pw20,
                        image: const AssetImage(Img.comment),
                      ),
                    ),
                  ),
                  Image(
                    width: Dimension.pw20,
                    image: const AssetImage(Img.share),
                  ),
                  Expanded(
                    child: widget.imagelink.length > 1
                        ? DotsIndicator(
                            dotsCount: widget.imagelink.length,
                            position: 0,
                            decorator: DotsDecorator(
                              color: Colors.grey,
                              activeColor: Colors.blue,
                            ),
                          )
                        : SizedBox(),
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
              "${getlikes()} Likes",
              style: TextStyle(
                fontSize: Dimension.f15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          /// caption..................................................................................

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimension.pw15, vertical: Dimension.pw5),
            child: RichText(
              overflow: TextOverflow.fade,
              maxLines: textOverflow ? double.maxFinite.toInt().round() : 3,
              text: TextSpan(
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                text: "${widget.name}  ",
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Double tapped.
                          setState(() {
                            textOverflow = !textOverflow;
                          });
                        },
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                      text: widget.caption),
                ],
              ),
            ),
          ),

          //// comments.............................................................................................

          Padding(
              padding: EdgeInsets.only(
                left: Dimension.pw15,
                bottom: Dimension.pw5,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CommentsPage(
                              comments: widget.comments,
                              name: widget.name,
                              caption: widget.caption
                              )));
                },
                child: Text(
                  "view all ${widget.comments.length} Comments",
                  style: TextStyle(color: Colors.grey),
                ),
              )),

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
