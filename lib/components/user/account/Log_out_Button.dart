
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../pages/Login_page.dart';

class logout_button extends StatefulWidget {
  const logout_button({Key? key}) : super(key: key);

  @override
  State<logout_button> createState() => _logout_buttonState();
}

class _logout_buttonState extends State<logout_button> {
  var width, height, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.04;
    double buttonSize = height * 0.3;

    return Container(
      height: height * 0.05,
      width: buttonSize,
      child: FloatingActionButton.extended(
        splashColor: Colors.transparent,
        heroTag: null,
        highlightElevation: 0,
        backgroundColor: Color(0xff087494),
        label: Text('ออกจากระบบ',
            style: TextStyle(
                color: Colors.white, fontSize: fontSize_, letterSpacing: 0.5)),
        elevation: 0,
        onPressed: () => showDialog(
          barrierColor: Colors.white.withOpacity(0.8),
          context: context,
          builder: (context) => AlertDialog(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side:
                BorderSide(color: Color(0xff046c92), width: 4)),
            backgroundColor: Colors.white,
            content: Container(
              width: width,
              height: height * 0.14,
              child: Column(
                children: [
                  AutoSizeText(
                    'คุณต้องการออกจากระบบใช่หรือไม่',
                    minFontSize: 8,
                    maxLines: 1,
                    stepGranularity: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xff046c92),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height * 0.05,
                          child: FloatingActionButton.extended(
                              elevation: 2,
                              splashColor: Colors.transparent,
                              highlightElevation: 0,
                              hoverColor: Colors.transparent,
                              backgroundColor: Color(0xff960000),
                              label: Text('ไม่',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () => Navigator.of(context)
                                  .pop(false)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Container(
                          height: height * 0.05,
                          child: FloatingActionButton.extended(
                              elevation: 2,
                              splashColor: Colors.transparent,
                              highlightElevation: 0,
                              hoverColor: Colors.transparent,
                              backgroundColor: Color(0xff046c92),
                              label: Text('ใช่',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () => Navigator.of(context)
                                  .pushAndRemoveUntil(
                                  new MaterialPageRoute(
                                      builder:
                                          (BuildContext context) =>
                                          login_()),
                                      (route) => false)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
