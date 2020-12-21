import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Reels extends StatefulWidget {
  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(width * 0.04),
        width: width,
        color: black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reels",
                  style: TextStyle(
                      fontSize: fontSize * 2,
                      color: white,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  FeatherIcons.camera,
                  color: white,
                  size: iconSize,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Icon(
                          FeatherIcons.heart,
                          color: white,
                          size: iconSize,
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          "85",
                          style: TextStyle(
                              fontSize: fontSize * 1.2,
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Icon(
                          FeatherIcons.messageCircle,
                          color: white,
                          size: iconSize,
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          "7",
                          style: TextStyle(
                              fontSize: fontSize * 1.2,
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "aqeelshamz • Follow",
                          style: TextStyle(
                              fontSize: fontSize * 1.2,
                              color: white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Icon(
                      FeatherIcons.send,
                      color: white,
                      size: iconSize,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "This is caption. !! Hello World!... ",
                      style: TextStyle(
                          fontSize: fontSize * 1.2,
                          color: white,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "more",
                      style: TextStyle(
                          fontSize: fontSize * 1.2,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "aqeelshamz • Original Audio",
                      style: TextStyle(
                          fontSize: fontSize * 1.2,
                          color: white,
                          fontWeight: FontWeight.normal),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: white,
                      size: iconSize,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
