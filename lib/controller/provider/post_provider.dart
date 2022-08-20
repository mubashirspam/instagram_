import 'package:flutter/material.dart';
import 'package:instagram/model/comments_model.dart';
import 'package:instagram/model/post_model.dart';

class PostProvider with ChangeNotifier {
  List<PostModel> _postDetails = [
    PostModel(
        user_name: "bold_pilot",
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1660245140098-016e8e0696dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1657299170964-205905bb0940?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1660421716266-7ad04ebe80f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
        ],
        id: "1",
        like: 13455,
        caption: "Art Director based in Rome",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment 🥰",
              time: DateTime.now()),
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "com 🥰",
              time: DateTime.now()),
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "super 🥰",
              time: DateTime.now()),
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment 🥰",
              time: DateTime.now()),
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "adipoli moneeeee 🥰",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "muz",
        like: 245,
        images: [
          "https://images.unsplash.com/photo-1660324472966-64a5875d4126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
          "https://images.unsplash.com/photo-1660324455436-4d163e51dcd1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
        ],
        id: "2",
        caption: "contemporary house",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "meeeee",
              commenter_name: "commenter_name",
              like: 100,
              comment: "nice😝",
              time: DateTime.now()),
          CommetModel(
            id: "",
              commenter_id: "meeeee",
              commenter_name: "commenter_name",
              like: 100,
              comment: "nice😝",
              time: DateTime.now()),
          CommetModel(
            id: "",
              commenter_id: "meeeee",
              commenter_name: "commenter_name",
              like: 100,
              comment: "nice😝",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "ibru",
        like: 123496711221,
        images: [
          "https://images.unsplash.com/photo-1660316498598-02d702dcd91c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
        ],
        id: "3",
        caption: "eading this sentences",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "loooo",
              commenter_name: "commenter_name",
              like: 450,
              comment: "doi",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "ana",
        like: 345,
        images: [
          "https://images.unsplash.com/photo-1660316497685-73feb61239e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
        ],
        id: "4",
        caption: "streat Photo",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "asnad",
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "5",
        like: 34,
        caption: "",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "muhsin",
        caption: "",
        like: 45,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "6",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "akbar",
        caption: "",
        like: 567,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "7",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "ajinas",
        caption: "",
        like: 67,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "8",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "rashid",
        caption: "",
        like: 67,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "9",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "muhsin",
        caption: "",
        like: 567,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "10",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "rinshana",
        caption: "",
        like: 45,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "11",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "akbarcp",
        caption: "",
        like: 789,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "12",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "abdullah",
        caption: "",
        like: 567,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "13",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "bbisher",
        caption: "",
        like: 567,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "14",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
    PostModel(
        user_id: "bold_pilot",
        uploadTime: DateTime.now(),
        user_name: "akkaaaa",
        caption: "",
        like: 678,
        images: [
          "https://images.unsplash.com/photo-1660323992783-28a46810b936?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        ],
        id: "15",
        comments: [
          CommetModel(
            id: "",
              commenter_id: "commenter_id",
              commenter_name: "commenter_name",
              like: 100,
              comment: "comment",
              time: DateTime.now()),
        ]),
  ];

  List<PostModel> get postDetails {
    return [..._postDetails];
  }
}
