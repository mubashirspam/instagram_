import 'package:flutter/material.dart';
import 'package:instagram/constant/image_icons.dart';
import 'package:instagram/search_pages/search_all_reslut_page.dart';
import 'package:instagram/widgets/gridview_widgets.dart';

import '../constant/dimension.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
      Img.a4,
      Img.a5,
      Img.a6,
      Img.a7,
      Img.a8,
      Img.a9,
      Img.a4,
      Img.a5,
      Img.a6,
      Img.a7,
      Img.a8,
      Img.a9,
      Img.a4,
      Img.a5,
      Img.a6,
      Img.a7,
      Img.a8,
      Img.a9,
      Img.a10,
    ];

    final postgridHight =
        ((Dimension.flullScreen) / 3) * ((postItems.length) / 3).ceil() +
            ((postItems.length) / 3).ceil() * 1;
    return Container(
      padding: EdgeInsets.only(top: Dimension.pw50),
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimension.pw15),
            margin: EdgeInsets.only(bottom: Dimension.pw15),
            height: Dimension.pw40,
            child: Row(
              children: [
                const Icon(Icons.arrow_back),
                SizedBox(
                  width: Dimension.pw10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.pw15),
                        color: const Color(0xffEFEFEF)),
                    child: Center(
                      child: TextField(
                        
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: Dimension.pw5),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          suffixIcon: const Icon(
                            Icons.close,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.maxFinite,
            child:
             GridViewWidget(
              gridHight: postgridHight,
              items: postItems,
              physics: AlwaysScrollableScrollPhysics(),
            ),
          )

              //  ListView(
              //   children: [
              //     Center(
              //         child: GestureDetector(
              //       onTap: () => Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const SearchAllReslutPage(),
              //         ),
              //       ),
              //       child: Text(
              //         "See all reasults",
              //         style: Theme.of(context).textTheme.bodyText1,
              //       ),
              //     )),
              //   ],
              // )),
              ),
        ],
      ),
    );
  }
}
