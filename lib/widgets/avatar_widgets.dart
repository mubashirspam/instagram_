import 'package:flutter/material.dart';
import 'package:instagram/constant/dimension.dart';
import 'package:instagram/constant/image_icons.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.isStory = true,
  }) : super(key: key);

  final String image;
  final double? width;
  final double? height;
  final bool? isStory;

  @override
  Widget build(BuildContext context) {
    return isStory == true
        ? Container(
            padding: EdgeInsets.all(2),
            height: height == null ? Dimension.pw55 + Dimension.pw10 : height,
            width: width == null ? Dimension.pw55 + Dimension.pw10 : width,
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
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image == "" ? Img.a1 : image))),
            ),
          )
        : Container(
            height: height == null ? Dimension.pw30 : height,
            width: width == null ? Dimension.pw30 : width,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(200),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image == "" ? Img.a1 : image))),
          );
  }
}
