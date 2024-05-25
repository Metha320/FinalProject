import 'package:flutter/material.dart';
import 'package:s_pro/pages/Login_page.dart';

class regis_progress_Button_ extends StatefulWidget {
  const regis_progress_Button_({Key? key}) : super(key: key);

  @override
  State<regis_progress_Button_> createState() => _regis_progress_Button_State();
}

class _regis_progress_Button_State extends State<regis_progress_Button_> {

  var width, height, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.045;
    double buttonSize = height*0.4;

    return Container(
      height: height * 0.12,
      child: Column(
        children: [
          Expanded(child:
          Container(
            width: buttonSize,
            child: FloatingActionButton.extended(
              splashColor: Colors.transparent,
              heroTag: null,
              highlightElevation: 0,
              backgroundColor: Color(0xff087494),
              label: Text('ยืนยัน',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize_,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5)),
              elevation: 0,

              onPressed: (){
                Navigator.of(context)
                    .pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => login_()), (route)=>false);
              },
            ),
          ),),

          Expanded(child:
          Container(
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
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5)),
              elevation: 0,

              onPressed: (){
                Navigator.of(context)
                    .pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => login_()), (route)=>false);
              },
            ),
          ),),
        ],
      ),
    );
  }
}
