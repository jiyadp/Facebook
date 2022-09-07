import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:facebook/assets.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBlueBorder;
  final double avatarWidth;
  final double avatarHeight;
  Avatar({
    required this.displayImage,
    required this.displayStatus,
    this.displayBlueBorder = false,
    this.avatarHeight = 50,
    this.avatarWidth = 50,
  });

  @override
  Widget build(BuildContext context) {
    Widget statuIndicator;
    if (displayStatus == true) {
      statuIndicator = Positioned(
        bottom: 0,
        right: 1.0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              )),
        ),
      );
    } else {
      statuIndicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBlueBorder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: const EdgeInsets.only(
              right: 4.0, left: 4.0, top: 0.0, bottom: 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: avatarWidth,
              height: avatarHeight,
            ),
          ),
        ),
        statuIndicator,
      ],
    );
  }
}
