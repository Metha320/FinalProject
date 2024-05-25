import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../pages/user_pages/user_animate_bottom_bar.dart';

class LogRe_button extends StatefulWidget {
  const LogRe_button({Key? key}) : super(key: key);

  @override
  State<LogRe_button> createState() => _LogRe_buttonState();
}

class _LogRe_buttonState extends State<LogRe_button> {
  final RoundedLoadingButtonController Register_ =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController alreadyHave =
      RoundedLoadingButtonController();

  var width, height, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.045;
    double buttonSize = height * 0.4;

    return Container(
      width: buttonSize,
      child: FloatingActionButton.extended(
        heroTag: null,
        highlightElevation: 0,
        backgroundColor: Color(0xff087494),
        label: Text(
          'เข้าสู่ระบบ',
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize_,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(
                  builder: (BuildContext context) => user_BottomNavBar_()),
              (route) => false);
        },
      ),
    );
  }
}
