import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:InstagramClone/widgets/Profile/numberLabel.dart';
import 'package:InstagramClone/widgets/blackTiles.dart';
import 'package:InstagramClone/widgets/profileCircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              height: height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "aqeelshamz",
                        style: TextStyle(
                            fontSize: fontSize * 2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Icon(
                        FeatherIcons.chevronDown,
                        size: iconSize,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      CircleAvatar(
                        radius: width * 0.009,
                        backgroundColor: Colors.red,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(FeatherIcons.plus, size: iconSize),
                      SizedBox(width: width * 0.04),
                      Icon(FeatherIcons.menu, size: iconSize)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: grey.withOpacity(0.5),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileCircle(
                            "assets/images/profilePic.jpg", false, true, false),
                        Row(
                          children: [
                            buildTitleLabel("50", "Posts"),
                            buildTitleLabel("250", "Followers"),
                            buildTitleLabel("450", "Following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aqeel",
                          style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.normal,
                              color: grey),
                        ),
                        Text(
                          "This is bio\nHello World!\nihdweioddqwihdqiondq dwqhqwio",
                          style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.normal,
                              color: black),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.07,
                              vertical: height * 0.01),
                          onPressed: () {},
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.07,
                              vertical: height * 0.01),
                          onPressed: () {},
                          child: Text(
                            "Promotions",
                            style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.07,
                              vertical: height * 0.01),
                          onPressed: () {},
                          child: Text(
                            "Insights",
                            style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.03),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.15,
                              height: width * 0.15,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: black),
                              ),
                              child: Icon(
                                FeatherIcons.plus,
                                size: iconSize * 1.5,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "New",
                              style: TextStyle(fontSize: fontSize * 1.2),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: black, offset: Offset(0, 2)),
                          ]),
                          child: FlatButton(
                            color: white,
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            onPressed: () {},
                            child: Icon(
                              FeatherIcons.grid,
                              size: iconSize,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: white, offset: Offset(0, 2)),
                          ]),
                          child: FlatButton(
                            color: white,
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            onPressed: () {},
                            child: Icon(
                              FeatherIcons.user,
                              size: iconSize,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      children: buildBlackTiles(50)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
