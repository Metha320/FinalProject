import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:s_pro/components/autoTxtResize.dart';
import 'package:s_pro/pages/user_pages/user_animate_bottom_bar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Consult_ extends StatefulWidget {
  const Consult_({Key? key}) : super(key: key);

  @override
  State<Consult_> createState() => _Consult_State();
}
class _Consult_State extends State<Consult_> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.043;
    double statusWidth = width;
    double statusHeight = height * 0.12;
    double statusProgressFS = 16;
    double statusFontSize = 18;
    double paragraph_ = height * 0.01;
    double sideRadius_ = width * 0.04;

    return WillPopScope(
      onWillPop: () => GotoHome_(context),
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          margin: EdgeInsets.fromLTRB(30, height * 0.1, 30, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: height * 0.1,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Image.asset('images/homepage_calendar.png'),
                      )),
                  AutoSizeText(
                    'ปรึกษาแพทย์',
                    minFontSize: 8,
                    maxLines: 1,
                    stepGranularity: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: width * 0.065,
                        color: Color(0xff087494),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                width: statusWidth,
                height: statusHeight,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(sideRadius_),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container( width: width*0.3,alignment: Alignment.topCenter,
                        child: AutoSizeText(
                          'สถานะการดำเนินการ',
                          minFontSize: 8,
                          maxLines: 1,
                          stepGranularity: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: statusProgressFS,
                              height: 2),
                        ),
                      ),
                      Container(
                        width: width*0.1,
                        margin: EdgeInsets.only(top:10),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'ว่าง',
                          minFontSize: 8,
                          maxLines: 1,
                          stepGranularity: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: statusFontSize,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: paragraph_,
              ),
              Container(
                width: statusWidth,
                height: statusHeight,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xff1976b1), width: 3),
                    borderRadius: BorderRadius.circular(sideRadius_),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: width*0.3,
                        alignment: Alignment.topCenter,
                        child: AutoSizeText(
                          'สถานะการดำเนินการ',
                          minFontSize: 8,
                          maxLines: 1,
                          stepGranularity: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: statusProgressFS,
                              height: 2),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width*0.55,
                              child: AutoSizeText(
                                'แพทย์ได้รับข้อมูลของคุณแล้ว',
                                minFontSize: 8,
                                maxLines: 1,
                                stepGranularity: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff1976b1),
                                    fontSize: statusFontSize,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              ),
                            ),
                            Container(
                              width: width*0.45,
                              child: AutoSizeText(
                                'กรุณารอตรวจสอบข้อมูล',
                                minFontSize: 8,
                                maxLines: 1,
                                stepGranularity: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff1976b1),
                                    fontSize: statusFontSize,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: paragraph_,
              ),
              Container(
                width: statusWidth,
                height: statusHeight,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xff12b412), width: 3),
                    borderRadius: BorderRadius.circular(sideRadius_),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: width*0.3,
                        alignment: Alignment.topCenter,
                        child: AutoSizeText(
                          'สถานะการดำเนินการ',
                          minFontSize: 8,
                          maxLines: 1,
                          stepGranularity: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: statusProgressFS,
                              height: 2),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width*0.33,
                              child: AutoSizeText(
                                'ดำเนินการสำเร็จ',
                                minFontSize: 8,
                                maxLines: 1,
                                stepGranularity: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff12b412),
                                    fontSize: statusFontSize,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: paragraph_,
              ),
              Container(
                width: statusWidth,
                height: statusHeight,
                child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xfff3ae2a), width: 3),
                      borderRadius: BorderRadius.circular(sideRadius_),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: width*0.3,
                          alignment: Alignment.topCenter,
                          child: AutoSizeText(
                            'สถานะการดำเนินการ',
                            minFontSize: 8,
                            maxLines: 1,
                            stepGranularity: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: statusProgressFS,
                                height: 2),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: width*0.45,
                                child: AutoSizeText(
                                  'ข้อมูลของคุณไม่ถูกต้อง',
                                  minFontSize: 8,
                                  maxLines: 1,
                                  stepGranularity: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xfff3ae2a),
                                      fontSize: statusFontSize,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              ),
                              Container(
                                width: width*0.69,
                                child: AutoSizeText(
                                  'กรุณารอตรวจสอบข้อมูลให้ถูกต้องก่อนส่ง',
                                  minFontSize: 8,
                                  maxLines: 1,
                                  stepGranularity: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xfff3ae2a),
                                      fontSize: statusFontSize,
                                      fontWeight: FontWeight.bold,
                                      height: 1.3),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: paragraph_ + 10,
              ),
              Container(
                width: width*0.5,
                height: height*0.05,
                child: FloatingActionButton.extended(
                  splashColor: Colors.transparent,
                  label: AuTxtResize(
                    label: 'กลับสู่หน้าแรก',
                    style: TextStyle(color: Colors.white,fontSize: statusProgressFS, letterSpacing: 0),
                  ),
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              user_BottomNavBar_()),
                      (route) => false),
                  highlightElevation: 1,
                  backgroundColor: Color(0xff1976b1),
                  elevation: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class symptom_ extends StatefulWidget {
  const symptom_({Key? key}) : super(key: key);

  @override
  State<symptom_> createState() => _symptom_State();
}
class _symptom_State extends State<symptom_> {
  var size, height, width;

  TextEditingController textarea = TextEditingController();
  final List<String> symptoms = [
    'โรคเก๊าท์',
    'โรคข้อเสื่อม',
    'โรคกระดูกพรุน',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.043;
    double statusWidth = width;
    double statusHeight = height * 0.1;
    double statusProgressFS = width * 0.035;
    double statusFontSize = width * 0.045;
    double paragraph_ = height * 0.01;
    double sideRadius_ = width * 0.04;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                'images/bg02.jpg',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: height * 0.06,
                left: width * 0.04,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(splashFactory: NoSplash.splashFactory,
                    onTap: () => Navigator.of(context).pop(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => Consult_())),
                    child: Image.asset(
                      'images/left-arrow.png',
                      width: width * 0.058,
                      height: height * 0.058,
                    ),
                  ),
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.fromLTRB(30, height * 0.36, 30, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.1,
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.04),
                            child: Image.asset(
                              'images/homepage_calendar.png',
                              width: width * 0.18,
                              height: height * 0.18,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: width*0.35,
                              child: AuTxtResize(
                                label: 'ปรึกษาแพทย์',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Color(0xff087494),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: width*0.44,
                              child: AutoSizeText(
                                'ทุกปัญหาทางออกอยู่แค่ในมือ',
                                minFontSize: 8,
                                maxLines: 1,
                                stepGranularity: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                    color: Color(0xff087494),
                                    height: 1.3,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: width*0.6,
                      child: AutoSizeText(
                        'เลือกหัวข้อที่ต้องการปรึกษาแพทย์',
                        minFontSize: 8,
                        maxLines: 1,
                        stepGranularity: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: fontSize_,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff087494),
                          height: 2.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        buttonStyleData: ButtonStyleData(
                          height: height * 0.06,
                          width: width,
                          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: Colors.white,
                          ),
                          elevation: 0,
                        ),
                        hint: Container(
                          width: width*0.56,
                          child: AutoSizeText(
                            'เลือกหัวข้อที่ต้องการปรึกษาแพทย์',
                            minFontSize: 8,
                            maxLines: 1,
                            stepGranularity: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        items: symptoms
                            .map(
                              (symptom) => DropdownMenuItem<String>(
                                value: symptom,
                                child: Text(
                                  symptom,
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) => setState(() {
                          selectedValue = value as String;
                        }),
                      ),
                    ),
                    SizedBox(
                      height: paragraph_ + 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: width*0.33,
                        child: AuTxtResize(
                          label: 'รายละเอียดเพิ่มเติม',
                          style: TextStyle(
                              color: Colors.grey, fontSize: width * 0.04),
                        ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        maxLines: 5,
                        keyboardType: TextInputType.text,
                        controller: textarea,
                        style: TextStyle(fontSize: width * 0.04),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(width * 0.03),
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(color: Color(0xffBCBCBC))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color(0xff087494), width: 1.5)),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "กรอกรายละเอียด"),
                      ),
                    ),
                    Container(
                      width: width,
                      child: AuTxtResize(
                        label: 'เมื่อกดส่งข้อมูลถึงแพทย์แล้ว แพทย์จะทำการติดต่อกลับผ่านช่องทาง LINE OFFICIAL',
                        style: TextStyle(
                            fontSize: width * 0.025,
                            color: Color(0xff6A6A6A),
                            height: 2),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: width,
                        child: FloatingActionButton.extended(
                          splashColor: Colors.transparent,
                          backgroundColor: Color(0xff087494),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(width * 0.03)),
                          onPressed: () => showDialog(
                            barrierDismissible: true,
                            barrierColor: Colors.white.withOpacity(0.8),
                            context: context,
                            builder: (context) => WillPopScope(
                              onWillPop: () => GotoHome_(context),
                              child: AlertDialog(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(sideRadius_),
                                    side: BorderSide(
                                        color: Color(0xff00ba00), width: 4)),
                                icon: Image.asset('images/check2.png',
                                    height: 50, width: 50),
                                backgroundColor: Colors.white,
                                content: Container(
                                  width: width,
                                  height: height * 0.14,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width*0.5,
                                        child: AutoSizeText(
                                          'ส่งข้อมูลไปยังแพทย์แล้ว',
                                          minFontSize: 8,
                                          maxLines: 1,
                                          stepGranularity: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff00ba00),
                                              fontSize: statusFontSize + 5,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: width*0.6,
                                        child: AuTxtResize(
                                          label: 'เมื่อถึงคิวของท่านแพทย์จะทำการติดต่อกลับผ่านทาง LINE OFFICIAL',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: statusProgressFS),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Container(
                                        width: width * 0.5,
                                        height: height * 0.05,
                                        child: FloatingActionButton.extended(
                                            elevation: 2,
                                            splashColor: Colors.transparent,
                                            highlightElevation: 0,
                                            hoverColor: Colors.transparent,
                                            backgroundColor: Color(0xff00ba00),
                                            label: Text('ตกลง',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold)),
                                            onPressed: () => Navigator.of(context)
                                                .pushAndRemoveUntil(
                                                    new MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            Consult_()),
                                                    (route) => false)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          label: Container(
                            width: width*0.37,
                            child: AuTxtResize(
                              label: 'ส่งข้อมูลถึงแพทย์',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
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
    );
  }
}

Future<bool> GotoHome_ (BuildContext context) async {
  bool? GotoHome = await Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (BuildContext context) => user_BottomNavBar_()));
  return GotoHome ?? false;
}