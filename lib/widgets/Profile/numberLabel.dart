import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';

Widget buildTitleLabel(String title, String label) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
    child: Column(
      children: [
        Text(
          title,
          style:
              TextStyle(fontSize: fontSize * 1.8, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: fontSize * 1.2, fontWeight: FontWeight.normal),
        )
      ],
    ),
  );
}
