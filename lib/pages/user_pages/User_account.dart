import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../components/user/account/Log_out_Button.dart';
import '../../components/user/account/display_account_info.dart';
import '../../components/user/home/input_search.dart';
import '../../components/user/home/profileImage.dart';
import 'Edit_account_info.dart';

class userAccount_ extends StatefulWidget {
  const userAccount_({Key? key}) : super(key: key);

  @override
  State<userAccount_> createState() => _userAccount_State();
}

class _userAccount_State extends State<userAccount_> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return WillPopScope(
      onWillPop: ()=>Exit_(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/home_bg2.jpg"), fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(height * 0.03),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.04),
                          child: search_(),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text('โปรไฟล์ของคุณ',
                            style: TextStyle(
                                color: Colors.grey, fontSize: width * 0.035)),
                        profileImg_(),
                        Text(
                          'ID: 045127',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: width * 0.032,
                              fontWeight: FontWeight.bold,
                              height: 2),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'คุณ ',
                              style: TextStyle(
                                  color: Color(0xff087494),
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'นางสาว มารีย์ วัลลภาณที',
                              style: TextStyle(
                                  color: Color(0xff087494), fontSize: width * 0.05),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          'เลขบัตรประจำตัวประชาชน',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: width * 0.032,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '1-2345-67890-12-3',
                          style: TextStyle(
                              color: Color(0xff087494), fontSize: width * 0.04),
                        ),
                        SizedBox(
                          height: height * 0.09,
                        ),
                        display_info(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.1,
                    left: width * 0.78,
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).push(
                        //     new MaterialPageRoute(
                        //         builder: (BuildContext context) => edit_info()));
                      },
                      child: Column(
                        children: [
                          Container(
                              width: width * 0.06,
                              child: Image.asset(
                                'images/settings.png',
                                color: Colors.grey,
                              )),
                          Text(
                            'แก้ไข',
                            style: TextStyle(
                                color: Colors.grey, fontSize: width * 0.035),
                          ),
                        ],
                      ),
                    ),
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
