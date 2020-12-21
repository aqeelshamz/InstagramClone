import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:InstagramClone/widgets/profileCircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: height * 0.055,
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 1,
              color: grey.withOpacity(0.2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FeatherIcons.camera,
                  color: blue,
                  size: iconSize,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "Camera",
                  style: TextStyle(
                    color: blue,
                    fontSize: fontSize * 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              color: grey.withOpacity(0.2),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.02,
              ),
              height: height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          FeatherIcons.arrowLeft,
                          size: iconSize,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
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
                      Icon(FeatherIcons.video, size: iconSize),
                      SizedBox(width: width * 0.05),
                      Icon(FeatherIcons.edit, size: iconSize)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.025,
                  ),
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FeatherIcons.search,
                            size: iconSize,
                            color: grey,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontSize: fontSize * 1.4, color: grey),
                          ),
                        ],
                      ),
                      Icon(
                        FeatherIcons.sliders,
                        size: iconSize,
                        color: grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(children: [
                        FlatButton(
                            color: white,
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            onPressed: () {},
                            child: Text("Primary")),
                        Container(
                          height: 1,
                          color: black,
                        ),
                      ]),
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
                            child: Text("General")),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.6,
                    ),
                  ],
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(width * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ProfileCircle("assets/images/profilePic.jpg",
                                  true, false, true),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "aqeelshamz",
                                    style: TextStyle(
                                        fontSize: fontSize * 1.2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "3 new messages",
                                        style: TextStyle(
                                            fontSize: fontSize * 1.2,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      Text(
                                        " • now",
                                        style: TextStyle(color: grey),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: width * 0.008,
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Icon(
                                FeatherIcons.camera,
                                size: iconSize,
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
