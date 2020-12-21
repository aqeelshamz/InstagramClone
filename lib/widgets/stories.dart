import 'dart:convert';

import 'package:InstagramClone/json/story.dart';
import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:InstagramClone/widgets/profileCircle.dart';
import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> stories = jsonDecode(storyJson);
    return Container(
      height: height * 0.12,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileCircle(
                  index == 0 ? stories[0]['image'] : stories[index]['image'],
                  false,
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.2,
                  child: Text(
                    index == 0 ? "Your Story" : stories[index]['username'],
                    style: TextStyle(
                        fontSize: fontSize * 1.2,
                        color: index == 0 ? grey : black),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
