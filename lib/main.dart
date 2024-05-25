import 'package:flutter/material.dart';
import 'package:s_pro/splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(index_());
}

class index_ extends StatelessWidget {
  index_({Key? key}) : super(key: key);
  static String title = 'GoRouter Routes';
  @override
  Widget build(BuildContext context)
{

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Kanit",
      ),
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
