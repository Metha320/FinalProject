import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/user/home/input_search.dart';
import '../../components/user/home/profileImage.dart';
import 'consult.dart';

class homepage_ extends StatefulWidget {
  const homepage_({Key? key}) : super(key: key);

  @override
  State<homepage_> createState() => _homepage_State();
}

class _homepage_State extends State<homepage_> {
  var size, height, width;
  var rotate;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
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
                    image: AssetImage("images/home_bg1.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.04),
                        child: search_(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: height * 0.13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ยินดีต้อนรับ",
                                  style: TextStyle(
                                      fontSize: width * 0.045,
                                      color: Color(0xff929292)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "คุณ",
                                      style: TextStyle(
                                          fontSize: width * 0.05,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      " มารีย์ วัลลพาณที",
                                      style: TextStyle(fontSize: width * 0.065),
                                    ),
                                  ],
                                ),
                                Text(
                                  "ID: 045127",
                                  style: TextStyle(
                                      fontSize: width * 0.038,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: height * 0.13, left: width * 0.055),
                            child: profileImg_(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => Consult_())),
                    child: Card(
                      color: Color(0xffD0D0D0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.list_alt),
                              Text('ติดตามสถานะของคุณ'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.22),
                    padding: EdgeInsets.only(left: width * 0.03),
                    width: width * 0.58,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                        color: Color(0xffD0D0D0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Icon(Icons.local_hospital_sharp),
                        Text(
                          " บริการของโรงพยาบาลสิริเวช",
                          style: TextStyle(fontSize: width * 0.035),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
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
                                  builder: (BuildContext context) =>
                                      symptom_())),
                          child: Container(
                            height: height * 0.13,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      height: width * 0.18,
                                      child: Image.asset(
                                          "images/homepage_calendar.png")),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "นัดหมายแพทย์",
                                    style: TextStyle(
                                        color: Color(0xff087494),
                                        fontSize: width * 0.075,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
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
                                onTap: () => launch('tel://039322477'),
                                child: Container(
                                  height: height * 0.13,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: width * 0.1,
                                          child: Image.asset(
                                              "images/emergency-call.png"),
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                        child: Text(
                                          'ฉุกเฉิน',
                                          style: TextStyle(
                                            color: Color(0xffe44c5c),
                                            fontSize: width * 0.055,
                                            fontWeight: FontWeight.bold,
                                          ),
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
                                onTap: () => showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),

                                  barrierColor: Colors.white.withOpacity(0.8),
                                  builder: (context) => Card(
                                    child: Container(
                                      height: height * 0.25,
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xff087494),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight:
                                                      Radius.circular(20)),
                                            ),
                                            alignment: Alignment.center,
                                            width: width,
                                            height: height * 0.06,
                                            // color: Color(0xff087494),
                                            child: Text(
                                              'เบอร์ติดต่อสอบถาม',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: width * 0.05),
                                            ),
                                          ),
                                          SizedBox(height: height*0.015,),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: width*0.04),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '039-605-666',
                                                  style: TextStyle(
                                                      fontSize: width * 0.05),
                                                ),
                                                Container(
                                                  width: width * 0.3,
                                                  child: TextButton(
                                                    onPressed: () => launch(
                                                        'tel://039605666'),
                                                    style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory,
                                                        primary: Colors.black,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                        backgroundColor:
                                                            Color(
                                                                    0xff8BFF86)),
                                                    child: Icon(
                                                      Icons.phone_in_talk,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          SizedBox(height: height*0.008,),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: width*0.04),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '039-327-530-4',
                                                  style: TextStyle(
                                                      fontSize:
                                                      width * 0.05),
                                                ),
                                                Container(
                                                  width: width * 0.3,
                                                  child: TextButton(
                                                    onPressed: () => launch(
                                                        'tel://0393275304'),
                                                    style: TextButton.styleFrom(
                                                        splashFactory: NoSplash.splashFactory,
                                                        primary: Colors.black,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10)
                                                        ),
                                                        backgroundColor: Color(
                                                            0xff8BFF86)),
                                                    child: Icon(
                                                      Icons.phone_in_talk,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: height * 0.13,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.025),
                                        child: Image.asset(
                                          "images/phoneService.png",
                                          height: height * 0.06,
                                        ),
                                      ),
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            'ติดต่อ',
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
                                          AutoSizeText(
                                            'สอบถาม',
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

  // Future<void> _makePhoneCall(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
