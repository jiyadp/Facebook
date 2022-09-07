import 'dart:ui';

import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

// ignore: camel_case_types
class statusSection extends StatelessWidget {
  const statusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Avatar(
          displayImage: dulqar,
          displayStatus: false,
        ),
        title: const TextField(
          decoration: InputDecoration(
            hintText: "What's On Your mind?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ));
  }
}
