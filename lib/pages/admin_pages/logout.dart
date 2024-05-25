import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../components/user/account/Log_out_Button.dart';

class logout_ extends StatefulWidget {
  const logout_({Key? key}) : super(key: key);

  @override
  State<logout_> createState() => _logout_State();
}

class _logout_State extends State<logout_> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return WillPopScope(
      onWillPop: () => Exit_(context),
      child: Container(
        alignment: Alignment.center,
        height: height,
        color: Color(0xffD1E8FF),
        child: Container(
          width: width * 0.5,
          height: height * 0.06,
          child:  logout_button(),
        ),
      ),
    );
  }

  Future<bool> Exit_(BuildContext context) async {
    bool? exitApp = await Alert(
      context: context,
      style: AlertStyle(
          isCloseButton: false,
          overlayColor: Colors.white.withOpacity(0.8),
          animationType: AnimationType.grow,
          animationDuration: Duration(milliseconds: 200)),
      title: "คุณต้องการออกใช่หรือไม่?",
      image: Image.asset(
        'images/exit.png',
        width: 50,
        height: 50,
      ),
      buttons: [
        DialogButton(
          color: Colors.red,
          child: Text(
            "ไม่",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        DialogButton(
          color: Colors.blue,
          child: Text(
            "ใช่",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    ).show();
    return exitApp ?? false;
  }
}
