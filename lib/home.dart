import 'package:facebook/assets.dart';
import 'package:facebook/section/headerbuttonsection.dart';
import 'package:facebook/section/roomSection.dart';
import 'package:facebook/section/statusSection.dart';
import 'package:facebook/section/storySection.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = const Divider(
      thickness: 1,
      color: Color(0xFFE0E0E0),
    );
    Widget thickDivider = const Divider(
      thickness: 10,
      color: Color(0xFFE0E0E0),
    );

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                "facebook",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                CircularButton(
                    buttonIcon: Icons.search,
                    buttonAction: (() {
                      print("Search screen appear");
                    })),
                CircularButton(
                    buttonIcon: Icons.chat,
                    buttonAction: (() {
                      print("Chat screen appear");
                    }))
              ],
            ),
            body: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const statusSection(),
                thinDivider,
                headerButtonSection(
                  buttonOne: headerButton(
                    buttonText: "Live",
                    buttonIcon: Icons.video_call,
                    buttonAction: () {
                      print("Go Live");
                    },
                    buttonColor: Colors.red,
                  ),
                  buttonTwo: headerButton(
                    buttonText: "Photo",
                    buttonIcon: Icons.photo_library,
                    buttonAction: () {
                      print("Take Photo");
                    },
                    buttonColor: Colors.green,
                  ),
                  buttonThree: headerButton(
                    buttonText: "Room",
                    buttonIcon: Icons.video_call,
                    buttonAction: () {
                      print("Create chat Room");
                    },
                    buttonColor: Colors.purple,
                  ),
                ),
                thickDivider,
                const RoomSecrion(),
                thickDivider,
                const StrorySection(),
                thickDivider,
                PostCard(
                  avatar: mamooty,
                  name: ikka2,
                  publishAt: "5h",
                  postTitle: "Happy BirthDay",
                  postimage: ikka2,
                  likeCount: "10K",
                  shareCount: "1K",
                  commentCoun: "1.5K",
                ),
                thickDivider,
                PostCard(
                  avatar: dulqar,
                  name: dq3,
                  publishAt: "3h",
                  postTitle: "Working With Colles",
                  postimage: dq3,
                  likeCount: "25K",
                  shareCount: "11K",
                  commentCoun: "12K",
                ),
                thickDivider,
                PostCard(
                  avatar: surya,
                  name: surya1,
                  publishAt: "3h",
                  postTitle: "Happy Moments",
                  postimage: surya1,
                  likeCount: "2K",
                  shareCount: "1K",
                  commentCoun: "1K",
                ),
                thickDivider,
                PostCard(
                  avatar: hr,
                  name: hr3,
                  publishAt: "3h",
                  postTitle: "Hrithik Roshan",
                  postimage: hr3,
                  likeCount: "2K",
                  shareCount: "1K",
                  commentCoun: "1K",
                ),
                thickDivider,
                PostCard(
                  avatar: raj,
                  name: raj3,
                  publishAt: "3h",
                  postTitle: "Prthi Raj",
                  postimage: raj3,
                  likeCount: "2K",
                  shareCount: "1K",
                  commentCoun: "1K",
                ),
                thickDivider,
                PostCard(
                  avatar: lal,
                  name: lal3,
                  publishAt: "3h",
                  postTitle: "Prthi Raj",
                  postimage: lal3,
                  likeCount: "22K",
                  shareCount: "13K",
                  commentCoun: "5K",
                ),
                thickDivider,
              ],
            )),
      ),
    );
  }
}
