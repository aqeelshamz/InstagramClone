import 'dart:async';
import 'package:InstagramClone/screens/home.dart';
import 'package:InstagramClone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), (){
      Get.to(Home());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Container(
              width: width * 0.2,
              child: Image.asset("assets/images/logo.png"),
            ),
            Column(
              children: [
                Container(
                  width: width * 0.25,
                  child: Image.asset("assets/images/fromFacebook.png"),
                ),
                SizedBox(height: height * 0.1)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
