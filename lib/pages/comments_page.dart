import 'package:flutter/material.dart';
import 'package:instagram/constant/dimension.dart';

import 'package:instagram/constant/image_icons.dart';
import 'package:instagram/widgets/avatar_widgets.dart';
import 'package:instagram/widgets/divider.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({
    Key? key,
    required this.comments,
    required this.name,
    required this.caption,
  }) : super(key: key);

  final List comments;
  final String name;
  final String caption;

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold);

    // print("name${widget.name.length}");
    // print("comments${widget.comments}");
    // print("caption${widget.caption}");
    // print("widget.comments.length,${widget.comments.length}");
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text(
          "Comments",
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimension.pw15),
            child: Image(
              width: Dimension.pw25,
              image: AssetImage(Img.share),
            ),
          ),
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
                child: SizedBox(
              child: ListView.builder(
                itemCount: widget.comments.length,
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) => ListTile(
                  leading: AvatarWidget(
                      isStory: false,
                      width: Dimension.pw40,
                      height: Dimension.pw40,
                      image: Img.a4),
                  title: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        text: "${widget.comments[index][0]}  ",
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                              text: widget.comments[index][1])
                        ]),
                  ),
                  subtitle: SizedBox(
                    width: Dimension.w50,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "3h",
                          style: textStyle,
                        ),
                        widget.comments[index][2] == 0
                            ? SizedBox()
                            : Padding(
                                padding: EdgeInsets.only(left: Dimension.pw15),
                                child: Text(
                                  "${widget.comments[index][2]} like",
                                  style: textStyle,
                                )),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: Dimension.pw15),
                          child: Text("Reply", style: textStyle),
                        ),
                        Text("Send", style: textStyle)
                      ],
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                    child: Icon(
                      liked ? Icons.favorite : Icons.favorite_border_outlined,
                      size: 13,
                      color: liked ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ),
            )),
            dividerGrey(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
              child: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("❤️"),
                      Text("🙌"),
                      Text("🔥"),
                      Text("👏"),
                      Text("😢"),
                      Text("😍"),
                      Text("😧"),
                      Text("😂"),
                    ],
                  )),
            ),
            dividerGrey(),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimension.pw15,
                  bottom: Dimension.pw15,
                  right: Dimension.pw15),
              child: SizedBox(
                height: Dimension.pw40,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: Dimension.pw15,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: Dimension.pw15, left: Dimension.f15),
                        hintText: "Comment as ${widget.name}",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimension.pw5),
                      child: Text(
                        "Post",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
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
}
