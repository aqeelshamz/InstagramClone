import 'package:InstagramClone/screens/splashScreen.dart';
import 'package:InstagramClone/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(750, 1334),
        allowFontScaling: false,
        child: GetMaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: white,
    ),
    home: SplashScreen(),
        ),
      );
  }
}
