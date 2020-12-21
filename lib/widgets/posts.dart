import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:InstagramClone/widgets/profileCircle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Posts {
  static List<Widget> buildPosts() {
    List<Widget> _posts = [];
    for (int i = 0; i < 12; i++) {
      _posts.add(Container(
        width: width,
        height: height * 0.68,
        color: white,
        child: Column(
          children: [
            Container(
              height: height * 0.06,
              color: white,
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ProfileCircle("assets/images/profilePic.jpg", true),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "aqeelshamz",
                            style: TextStyle(
                                fontSize: fontSize * 1.3,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Location",
                            style: TextStyle(fontSize: fontSize * 1.1),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Container(
              color: black,
              height: height * 0.4,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FeatherIcons.heart,
                              size: iconSize * 1.2,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              FeatherIcons.messageCircle,
                              size: iconSize * 1.2,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              FeatherIcons.send,
                              size: iconSize * 1.2,
                            ),
                          ],
                        ),
                        Icon(
                          FeatherIcons.bookmark,
                          size: iconSize * 1.2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Text(
                      "10 likes",
                      style: TextStyle(
                        fontSize: fontSize * 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      text: TextSpan(
                          text: 'aqeelshamz',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: fontSize * 1.4,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' This is the caption sss ssswsw ssswsw ssswsw ssswswssswswssswswssswsw ssswswssswsw ssswsw ssswsw ssswswssswsw ssswsw',
                                style: TextStyle(
                                    color: black,
                                    fontSize: fontSize * 1.4,
                                    fontWeight: FontWeight.normal),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  })
                          ]),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                Image.asset("assets/images/profilePic.jpg")
                                    .image),
                        SizedBox(width: width * 0.02),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment...",
                              hintStyle: TextStyle(),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "😂",
                              style: TextStyle(
                                fontSize: fontSize * 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "🤣",
                              style: TextStyle(
                                fontSize: fontSize * 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "😍",
                              style: TextStyle(
                                fontSize: fontSize * 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "5 hours ago",
                      style: TextStyle(
                        fontSize: fontSize * 1.1,
                        color: grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ));
    }
    return _posts;
  }
}
