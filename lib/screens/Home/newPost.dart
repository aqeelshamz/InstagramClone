import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:InstagramClone/widgets/blackTiles.dart';
import 'package:InstagramClone/widgets/greyButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: black.withOpacity(0.1),
                    offset: Offset(0, 1),
                    blurRadius: width * 0.02)
              ]),
              height: height * 0.07,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.close,
                            size: iconSize * 1.5,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Text(
                          "New Post",
                          style: TextStyle(
                              fontSize: fontSize * 1.7,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Icon(FeatherIcons.arrowRight,
                        color: blue, size: iconSize * 1.4)
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: height * 0.45,
                  color: black,
                ),
                Positioned(
                  bottom: height * 0.015,
                  left: width * 0.03,
                  child: greyButton(
                    FeatherIcons.maximize2,
                    grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              height: height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Gallery",
                        style: TextStyle(
                          fontSize: fontSize * 1.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        FeatherIcons.chevronDown,
                        size: iconSize,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      greyButton(FeatherIcons.file, grey),
                      SizedBox(width: width * 0.04),
                      greyButton(FeatherIcons.camera, grey)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: buildBlackTiles(16)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
