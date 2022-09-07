// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class headerButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  headerButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider1 = const VerticalDivider(
      thickness: 1,
      color: Colors.grey,
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider1,
          buttonTwo,
          verticalDivider1,
          buttonThree
        ],
      ),
    );
  }
}
