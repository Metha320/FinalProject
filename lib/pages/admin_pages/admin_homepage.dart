import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:s_pro/pages/admin_pages/Rejected_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Accepted_list.dart';
import 'consult_received.dart';

class admin_homepage_ extends StatefulWidget {
  const admin_homepage_({Key? key}) : super(key: key);

  @override
  State<admin_homepage_> createState() => _admin_homepage_State();
}

class _admin_homepage_State extends State<admin_homepage_> {
  var size, height, width;
  var rotate;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;

    return WillPopScope(
      onWillPop: () => Exit_(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/backend-bg.png"),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: height*0.1),
                        height: height*0.2,
                        width: width*0.78,
                        child: Text('LOGO', style: TextStyle(fontSize: 100, color: Color(0xff087494)),textAlign: TextAlign.center,),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.04),
                      width: width * 0.58,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Color(0xffD0D0D0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width*0.01),
                            child: Icon(Icons.health_and_safety),
                          ),
                          Container(
                            width: width*0.35,
                            child: AutoSizeText(
                              "ยินดีต้อนรับผู้ดูแลระบบ",
                              minFontSize: 8,
                              maxLines: 1,
                              stepGranularity: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: width * 0.035),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.16,
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          splashFactory: NoSplash.splashFactory,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      connsult_received())),
                          child: Container(
                            height: height * 0.13,
                            width: width,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: width * 0.18,
                                      child: Image.asset(
                                          "images/admin_stethoscope.png", fit: BoxFit.fitWidth,)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: width*0.25,
                                      child: AutoSizeText(
                                        "รายการ",
                                        minFontSize: 8,
                                        maxLines: 1,
                                        stepGranularity: 1,
                                        overflow: TextOverflow.ellipsis,
                                        //
                                        style: TextStyle(
                                          fontSize: 30,
                                            color: Color(0xff087494),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                      Container(
                                        width: width*0.55,
                                        child: AutoSizeText(
                                          "ปรึกษาแพทย์",
                                          minFontSize: 8,
                                          maxLines: 1,
                                          stepGranularity: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xff087494),
                                              fontSize: width * 0.09,
                                              fontWeight: FontWeight.bold,
                                          height: 1),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        children: [
                          Expanded(
                            flex: 18,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: InkWell(
                                splashFactory: NoSplash.splashFactory,
                                borderRadius: BorderRadius.circular(20),
                                onTap: ()=> Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            Accepted_list())),
                                child: Container(
                                  padding: EdgeInsets.only(right: width*0.03),
                                  height: height * 0.13,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: width * 0.12,
                                          child: Image.asset(
                                              "images/accept.png"),
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                            child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: width*0.19,
                                                  child: AutoSizeText(
                                                    'รายการ',
                                                    minFontSize: 8,
                                                    maxLines: 1,
                                                    stepGranularity: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Color(0xff007D3F),
                                                      fontSize: width * 0.05,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: width*0.19,
                                                  child: AutoSizeText(
                                                    'ที่ถูกยอมรับ',
                                                    minFontSize: 8,
                                                    maxLines: 1,
                                                    stepGranularity: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Color(0xff007D3F),
                                                      fontSize: width * 0.05,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 18,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: InkWell(
                                splashFactory: NoSplash.splashFactory,
                                borderRadius: BorderRadius.circular(20),
                                onTap: ()=> Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            Rejected_list())),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: width*0.035),
                                  height: height * 0.13,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "images/rejected.png",
                                        height: height * 0.06,fit: BoxFit.cover,),
                                      SizedBox(width: width*0.04),
                                      Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Container(
                                                width: width*0.19,
                                                child: AutoSizeText(
                                                  'รายการ',
                                                  minFontSize: 8,
                                                  maxLines: 1,
                                                  stepGranularity: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Color(0xff087494),
                                                      fontSize: width * 0.05,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1),
                                                ),
                                              ),
                                              Container(
                                                width: width*0.19,
                                                child: AutoSizeText(
                                                  'ที่ถูกปฏิเสธ',
                                                  minFontSize: 8,
                                                  maxLines: 1,
                                                  stepGranularity: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Color(0xff087494),
                                                      fontSize: width * 0.05,
                                                      fontWeight: FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
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

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}