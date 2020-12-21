import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/cupertino.dart';

List<Widget> buildBlackTiles(int itemCount) {
  List<Widget> widgets = [];
  for (int i = 0; i < itemCount; i++) {
    widgets.add(Padding(
      padding: EdgeInsets.all(width * 0.002),
      child: Container(
        width: width * 0.5,
        height: width * 0.5,
        color: black,
      ),
    ));
  }
  return widgets;
}
