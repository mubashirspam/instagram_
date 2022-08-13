import 'package:flutter/material.dart';

import '../constant/dimension.dart';

class SearchAllReslutPage extends StatelessWidget {
  const SearchAllReslutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Container(
            height: Dimension.pw40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.pw15),
              color: const Color(0xffEFEFEF),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: Dimension.pw5),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  // suffixIcon: const Icon(
                  //   Icons.close,
                  // ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  text: "Top",
                ),
                Tab(
                  text: "Accounts",
                ),
                Tab(
                  text: "Audio",
                ),
                Tab(
                  text: "Tags",
                ),
                Tab(
                  text: "Place",
                )
              ]),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("Top"),
            ),
            Center(
              child: Text("Accounts"),
            ),
            Center(
              child: Text("Audio"),
            ),
            Center(
              child: Text("Tags"),
            ),
            Center(
              child: Text("Place"),
            ),
          ],
        ),
      ),
    );
  }
}
