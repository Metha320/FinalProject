import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:s_pro/pages/Login_page.dart';
import '../../pages/register_page.dart';

class register1_button extends StatefulWidget {
  const register1_button({Key? key}) : super(key: key);

  @override
  State<register1_button> createState() => _register1_buttonState();
}

class _register1_buttonState extends State<register1_button> {
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
    double fontSize_ = height * 0.022;
    double buttonSize = height * 0.4;

    return Container(
      height: height * 0.12,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: buttonSize,
              child: FloatingActionButton.extended(
                splashColor: Colors.transparent,
                heroTag: null,
                highlightElevation: 0,
                backgroundColor: Color(0xff087494),
                label: Text('ถัดไป',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize_,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => register_2()));
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: buttonSize,
              child: FloatingActionButton.extended(
                splashColor: Colors.transparent,
                heroTag: null,
                highlightElevation: 0,
                backgroundColor: Colors.transparent,
                label: Text('มีบัญชีแล้ว',
                    style: TextStyle(
                        color: Color(0xff087494),
                        fontSize: fontSize_,
                        letterSpacing: 0)),
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
                      builder: (BuildContext context) => login_()), (route)=>false);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
