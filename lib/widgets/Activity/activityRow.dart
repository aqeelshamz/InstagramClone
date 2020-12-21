import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';

Widget buildActivityRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: height * 0.015),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: width * 0.05,
              backgroundImage: Image.asset("assets/images/profilePic.jpg").image,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Text(
              "aqeelshamz",
              style: TextStyle(
                  fontSize: fontSize * 1.2,
                  color: black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              " liked your post. ",
              style: TextStyle(
                  fontSize: fontSize * 1.2,
                  color: black,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "2m",
              style: TextStyle(
                  fontSize: fontSize * 1.2,
                  color: grey,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Container(
                              width: width * 0.1,
                              height: width * 0.1,
                              color: black),
      ],
    ),
  );
}
