import 'dart:math';

import 'package:facebook/section/headerbuttonsection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishAt;
  final String postTitle;
  final String postimage;
  final String likeCount;
  final String shareCount;
  final String commentCoun;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishAt,
    required this.postTitle,
    required this.postimage,
    required this.likeCount,
    required this.shareCount,
    required this.commentCoun,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      postCardHeader(),
      postCardTitle(),
      postCardImage(),
      PostFooterSection(),
      Divider(
        thickness: 1,
        color: Colors.grey   ),
      headerButtonSection(
        buttonOne: headerButton(
          buttonText: "Like",
          buttonIcon: Icons.thumb_up_alt_outlined,
          buttonAction: () {
            print("Like Page");
          },
          buttonColor: Colors.grey,
        ),
        buttonTwo: headerButton(
          buttonText: "Comment",
          buttonIcon: Icons.message_outlined,
          buttonAction: () {
            print("Go Live");
          },
          buttonColor: Colors.grey,
        ),
        buttonThree: headerButton(
          buttonText: "Live",
          buttonIcon: Icons.video_call,
          buttonAction: () {
            print("Go Live");
          },
          buttonColor: Colors.grey,
        ),
      )
    ]));
  }

  Widget postCardTitle() {
    return Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(postTitle == null ? "" : postTitle,
            style: TextStyle(color: Colors.black, fontSize: 16)));
  }

  Widget postCardImage() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage),
    );
  }

  Widget PostFooterSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  )),
              SizedBox(width: 5),
              displayText(label: likeCount),
            ],
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCoun),
                SizedBox(width: 5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "Shares"),
                SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  avatarWidth: 25,
                  avatarHeight: 25,
                ),
                IconButton(
                    onPressed: () {
                      print("Dropdown Button Pressed");
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Color.fromARGB(255, 140, 138, 138)),
    );
  }

  Widget postCardHeader() {
    return ListTile(
        leading: Avatar(displayImage: avatar, displayStatus: false),
        title: Row(children: const [
          Text(
            "Mamooty",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          BlueTick()
        ]),
        subtitle: Row(children: [
          Text(
            publishAt == null ? "" : publishAt,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Color.fromARGB(255, 109, 106, 106),
            size: 15,
          ),
        ]),
        trailing: IconButton(
          onPressed: () {
            print("Open More Menu");
          },
          icon: Icon(
            Icons.more_horiz,
            color: Color.fromARGB(255, 109, 106, 106),
          ),
        ));
  }
}
