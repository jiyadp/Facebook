import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomSecrion extends StatelessWidget {
  const RoomSecrion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        children: [
          creatRoomButton(),
          Avatar(
            displayImage: dulqar,
            displayStatus: true,
          ),
          Avatar(
            displayImage: surya,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mamooty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: hr,
            displayStatus: true,
          ),
          Avatar(
            displayImage: raj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: lal,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget creatRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
          icon: const Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          label: const Text(
            "Creat\nRoom",
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            print("Create a Char room");
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ))))),
    );
  }
}
