import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avater;
  final bool createStoryStatus;
  final bool displayBlueBorder;
  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avater,
      this.createStoryStatus = false,
      this.displayBlueBorder = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 4,
              top: 4,
              child: createStoryStatus
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      iconColor: Colors.blue,
                      buttonAction: () {
                        print("Create New Story");
                      },
                    )
                  : Avatar(
                      displayImage: avater,
                      displayStatus: false,
                      displayBlueBorder: displayBlueBorder,
                      avatarHeight: 35,
                      avatarWidth: 35,
                    )),
          Positioned(
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            bottom: 10,
            left: 10,
          )
        ],
      ),
    );
  }
}
