import 'package:flutter/material.dart';
import 'package:s_pro/pages/Login_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SplashScreenView(
      navigateRoute: login_(),
      duration: 5000,
      imageSize: 350,
      imageSrc: "images/doctorA.gif",
      backgroundColor: Color(0xfff8e4dc),
      pageRouteTransition: PageRouteTransition.CupertinoPageRoute,
    );
  }
}