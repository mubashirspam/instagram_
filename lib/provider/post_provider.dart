import 'package:flutter/material.dart';
import 'package:instagram/model/post_model.dart';

class PostProvider with ChangeNotifier {
  List<PostModel> _postDetails = [
    PostModel(
        name: "bold_pilot",
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1660245140098-016e8e0696dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1657299170964-205905bb0940?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1660421716266-7ad04ebe80f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
        ],
        id: "1",
        like: 13455,
        caption: "Art Director based in Rome",
        comments: [
          ["asnad", '😍', 0],
          ["asnad", ' 😖😡😘🥰', 2],
          ["faru", 'so nice', 2],
          ["akash", 'so nice', 2],
          ["anadit", '😖😡😘🥰 so nice', 124],
          ["akku", '😖😡😘🥰so nice', 2],
          ["eh", 'so nice', 2],
          ["chunkud", 'so nice😖😡😘🥰', 0],
        ]),
    PostModel(
        name: "muz",
        like: 245,
        link: [
          "https://images.unsplash.com/photo-1660324472966-64a5875d4126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
          "https://images.unsplash.com/photo-1660324455436-4d163e51dcd1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
        ],
        id: "2",
        caption: "contemporary house",
        comments: [
          ["akku", 'so nice', 0],
          ["akku", 'so buetiful', 2],
        ]),
    PostModel(
        name: "ibru",
        like: 123496711221,
        link: [
          "https://images.unsplash.com/photo-1660316498598-02d702dcd91c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
        ],
        id: "3",
        caption: "eading this sentences",
        comments: [
          [
            "dude",
            'If you reading this sentences, that is mean you intrested my account and my works. I hope can my photos will give you a lot of emotions, inspiration and most importantly will make you smile from the photo.',
            0
          ],
          ["akku", 'so nice', 2],
        ]),
    PostModel(
        name: "ana",
        like: 345,
        link: [
          "https://images.unsplash.com/photo-1660316497685-73feb61239e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
        ],
        id: "4",
        caption: "streat Photo",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "asnad",
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "5",
        like: 34,
        caption: "",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
      name: "muhsin",
      caption: "",
      like: 45,
      link: [
        "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      ],
      id: "6",
      comments: [
        ['so nice', 0],
        ['so nice', 2],
      ],
    ),
    PostModel(
      name: "akbar",
      caption: "",
      like: 567,
      link: [
        "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
      ],
      id: "7",
      comments: [
        ['so nice', 0],
        ['so nice', 2],
      ],
    ),
    PostModel(
        name: "ajinas",
        caption: "",
        like: 67,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "8",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "rashid",
        caption: "",
        like: 67,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "9",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "muhsin",
        caption: "",
        like: 567,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "10",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "rinshana",
        caption: "",
        like: 45,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "11",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "akbarcp",
        caption: "",
        like: 789,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "12",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "abdullah",
        caption: "",
        like: 567,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "13",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "bbisher",
        caption: "",
        like: 567,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "14",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
    PostModel(
        name: "akkaaaa",
        caption: "",
        like: 678,
        link: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "15",
        comments: [
          ["asnad", 'so nice', 2],
          ["faru", 'so nice', 2],
        ]),
  ];

  List<PostModel> get postDetails {
    return [..._postDetails];
  }
}
