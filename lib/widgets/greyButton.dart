import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';

Widget greyButton(IconData icon, Color color) {
  return Container(
    width: width * 0.08,
    height: width * 0.08,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
    child: Icon(icon, color: white),
  );
}
