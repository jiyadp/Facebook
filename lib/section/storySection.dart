import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StrorySection extends StatelessWidget {
  const StrorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        children: [
          StoryCard(
            labelText: "Add To Story",
            avater: dulqar,
            story: dulqar,
            createStoryStatus: true,
            displayBlueBorder: true,
          ),
          StoryCard(
            labelText: "Mamooty",
            avater: mamooty,
            story: ikka2,
            createStoryStatus: false,
            displayBlueBorder: true,
          ),
          StoryCard(
            labelText: "Hritik Rosan",
            avater: hr,
            story: hr3,
            createStoryStatus: false,
            displayBlueBorder: true,
          ),
          StoryCard(
            labelText: "Surya",
            avater: surya,
            story: surya1,
            createStoryStatus: false,
            displayBlueBorder: true,
          ),
          StoryCard(
            labelText: "PrithiRaj",
            avater: raj,
            story: raj3,
            createStoryStatus: false,
            displayBlueBorder: true,
          ),
          StoryCard(
            labelText: "Mohan Lal",
            avater: lal,
            story: lal3,
            createStoryStatus: false,
            displayBlueBorder: true,
          ),
        ],
      ),
    );
  }
}
