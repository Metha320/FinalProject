import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class version_ extends StatefulWidget {
  const version_({Key? key}) : super(key: key);

  @override
  State<version_> createState() => _version_State();
}

class _version_State extends State<version_> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return WillPopScope(
      onWillPop: () => Exit_(context),
      child: Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Text('To be continue', style: TextStyle(fontSize: 26),),)
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
      image: Image.asset('images/exit.png', width: 50, height: 50,),
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
