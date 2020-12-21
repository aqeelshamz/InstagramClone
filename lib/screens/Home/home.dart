import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:InstagramClone/widgets/posts.dart';
import 'package:InstagramClone/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stories(),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: 1,
            color: grey.withOpacity(0.4),
          ),
          Column(
            children: Posts.buildPosts(),
          )
        ],
      ),
    );
  }
}
