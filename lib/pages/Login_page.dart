import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:s_pro/pages/register_page.dart';
import 'admin_pages/admin_animate_bottom_bar.dart';
import 'user_pages/user_animate_bottom_bar.dart';
import '../components/user/account/password_remember.dart';
import '../components/login/password_.dart';

class login_ extends StatefulWidget {
  const login_({Key? key}) : super(key: key);

  @override
  State<login_> createState() => _login_State();
}

class _login_State extends State<login_> {
  var size, height, width;
  TextEditingController textCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double paragraph = height * 0.02;
    double fontSize_ = width * 0.045;
    double iconSize_ = width * 0.075;
    double buttonSize = height * 0.4;

    return WillPopScope(
      onWillPop: () => Exit_(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.infinity,
              height: height,
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height * 0.05),
                        width: width,
                        height: height * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("images/login_img.png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height * 0.45),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: width * 0.22,
                                child: Image.asset(
                                  'images/patient.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'เข้าสู่ระบบ',
                                    style: TextStyle(
                                      color: Color(0xff087494),
                                      fontSize: width * 0.08,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'เข้าสู่ระบบเพื่อเข้าใช้งานและดูข้อมูลสุขภาพ',
                                    style: TextStyle(
                                      color: Color(0xff087494),
                                      fontSize: width * 0.028,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: paragraph),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: textCtrl,
                            style: TextStyle(fontSize: fontSize_),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: iconSize_,
                                  color: Color(0xff087494),
                                ),
                                contentPadding: EdgeInsets.zero,
                                filled: true,
                                fillColor: Color(0xffFAFAFA),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Color(0xffBCBCBC))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Color(0xff087494))),
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: fontSize_),
                                hintText: "อีเมล"),
                          ),
                        ),
                        SizedBox(height: paragraph),
                        password_(),
                        password_remember_(),
                        SizedBox(height: height * 0.02),
                        Container(
                          width: buttonSize,
                          child: FloatingActionButton.extended(
                            splashColor: Colors.transparent,
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
                            onPressed: (){if (textCtrl.value.text == null || textCtrl.value.text.isEmpty) {
                              Navigator.of(context).pushAndRemoveUntil(
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) => user_BottomNavBar_()),
                                      (route) => false);
                            }if(textCtrl.value.text.isNotEmpty){
                              Navigator.of(context).pushAndRemoveUntil(
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) => admin_BottomNavBar_()),
                                      (route) => false);
                            }
                            }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'หากคุณยังไม่มีบัญชี คลิ๊ก! ',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: width * 0.04),
                              ),
                              InkWell(
                                  onTap: () => Navigator.of(context).push(
                                        new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              register_1(),
                                        ),
                                      ),
                                  child: Text(
                                    'ลงทะเบียน',
                                    style: TextStyle(
                                        color: Color(0xff087494),
                                        fontSize: width * 0.04),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
}
