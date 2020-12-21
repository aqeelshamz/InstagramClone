import 'package:InstagramClone/screens/Home/activity.dart';
import 'package:InstagramClone/screens/Home/home.dart';
import 'package:InstagramClone/screens/Home/newPost.dart';
import 'package:InstagramClone/screens/Home/reels.dart';
import 'package:InstagramClone/utils/colors.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

int _currentIndex = 0;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: white,
        height: height * 0.07,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBottomNavButton(0, FeatherIcons.home),
              buildBottomNavButton(1, FeatherIcons.playCircle),
              buildBottomNavButton(2, FeatherIcons.plusSquare),
              buildBottomNavButton(3, FeatherIcons.heart),
              CircleAvatar(
                backgroundImage:
                    Image.asset("assets/images/profilePic.jpg").image,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _currentIndex != 0
                ? SizedBox.shrink()
                : Container(
                    height: height * 0.08,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                            ),
                            SizedBox(
                              height: height * 0.04,
                              child: Image.asset("assets/images/textLogo.png"),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FeatherIcons.search,
                                size: iconSize,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FeatherIcons.messageCircle,
                                size: iconSize,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            _currentIndex == 0
                ? HomePage()
                : _currentIndex == 1
                    ? Reels()
                    : _currentIndex == 3
                        ? Activity()
                        : SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavButton(int index, IconData icon) {
    return GestureDetector(
      onTap: () {
        if (index == 2) {
          Get.to(NewPost());
        } else {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      child: Icon(
        icon,
        size: iconSize,
        color: _currentIndex == index ? black : black.withOpacity(0.5),
      ),
    );
  }
}
