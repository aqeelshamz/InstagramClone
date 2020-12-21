import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  final String image;
  final bool small;
  ProfileCircle(this.image, this.small);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: small ? width * 0.09 : width * 0.2,
      height: small ? width * 0.09 : width * 0.2,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink[900],
                Colors.pink,
                Colors.red,
                Colors.orange,
                Colors.orange
              ])),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(width * 0.006),
          width: small ? width * 0.08 : width * 0.19,
          height: small ? width * 0.08 : width * 0.19,
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
