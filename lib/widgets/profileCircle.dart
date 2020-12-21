import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  final String image;
  final bool small;
  final bool profile;
  final bool chat;
  ProfileCircle(this.image, this.small, this.profile, this.chat);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: chat ? width * 0.128 : profile
          ? width * 0.25
          : small
              ? width * 0.09
              : width * 0.2,
      height: chat ? width * 0.128 : profile
          ? width * 0.25
          : small
              ? width * 0.09
              : width * 0.2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: instaGradient,
        ),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(width * 0.006),
          width: chat ? width * 0.12 : profile
              ? width * 0.24
              : small
                  ? width * 0.08
                  : width * 0.19,
          height: chat ? width * 0.12 : profile
              ? width * 0.24
              : small
                  ? width * 0.08
                  : width * 0.19,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: white,
          ),
          child: CircleAvatar(
            backgroundImage: Image.asset(
              image,
              fit: BoxFit.cover,
            ).image,
          ),
        ),
      ),
    );
  }
}
