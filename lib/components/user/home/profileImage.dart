import 'package:flutter/material.dart';

class profileImg_ extends StatefulWidget {
  const profileImg_({Key? key}) : super(key: key);

  @override
  State<profileImg_> createState() => _profileImg_State();
}

class _profileImg_State extends State<profileImg_> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return CircleAvatar(
      backgroundImage: AssetImage("images/profileImg.png"),
      radius: width * 0.1,
    );
  }
}
