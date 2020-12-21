import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Activity",
                style: TextStyle(
                    fontSize: fontSize * 2,
                    color: black,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: height * 0.04),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(width * 0.03),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: black)),
                          child:
                              Icon(FeatherIcons.arrowUpRight, size: iconSize),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Promotions",
                              style: TextStyle(
                                  fontSize: fontSize * 1.3,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Recent activity from your promotions.",
                              style: TextStyle(
                                  fontSize: fontSize * 1.2,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      height: 1,
                      color: grey.withOpacity(0.5),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      "New",
                      style: TextStyle(
                          fontSize: fontSize * 1.4,
                          color: black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            Text("aqeelshamz"),
                            Text(" liked your post. "),
                            Text("2m"),
                          ],
                        ),
                        Container(
                            width: width * 0.1,
                            height: width * 0.1,
                            color: black),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
