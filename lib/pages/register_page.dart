import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:s_pro/components/register/input_Passport_id.dart';
import 'package:s_pro/components/register/register_form.dart';
import 'package:s_pro/components/register/pick_image.dart';
import '../components/register/input_dummy.dart';
import '../components/register/input_id_card.dart';
import '../components/register/register1_button.dart';
import '../components/register/register2_button.dart';
import '../components/register/register3_button.dart';

class register_1 extends StatefulWidget {
  const register_1({Key? key}) : super(key: key);

  @override
  State<register_1> createState() => _register_1State();
}

class _register_1State extends State<register_1> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/bg01.jpg"),
                            fit: BoxFit.cover)
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height * 0.3),
                      width: width * 0.76,
                      height: height * 0.2,
                      child: Text('LOGO', style: TextStyle(fontSize: 100, color: Color(0xff087494)),textAlign: TextAlign.center,),
                    ),
                    Text(
                      'ลงทะเบียน',
                      style: TextStyle(
                        color: Color(0xff087494),
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'เพื่อดูผลสุขภาพของคุณ',
                      style: TextStyle(
                          color: Color(0xff087494),
                          fontSize: width * 0.07,
                          height: 1),
                    ),
                    SizedBox(height: height * 0.04),
                    input_dummy(),
                    SizedBox(height: height * 0.1),
                    register1_button(),
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

class register_2 extends StatefulWidget {
  const register_2({Key? key}) : super(key: key);

  @override
  State<register_2> createState() => _register_2State();
}

class _register_2State extends State<register_2> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("images/bg01.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.35,
                    ),
                    Text(
                      'ยืนยันตัวตนของคุณ',
                      style: TextStyle(
                        color: Color(0xff087494),
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AutoSizeText(
                      'โปรดกรอกหมายเลขบัตรประจำตัวประชาชน',
                      minFontSize: 8,
                      maxLines: 1,
                      stepGranularity: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color(0xff087494),
                          fontSize: width * 0.043,
                          fontWeight: FontWeight.bold,
                          height: 2),
                    ),
                    SizedBox(height: height * 0.04),
                    Text(
                      'กรุณากรอกข้อมูลให้ถูกต้องครบถ้วน',
                      style: TextStyle(
                          color: Colors.grey, fontSize: width * 0.032),
                    ),
                    SizedBox(height: height * 0.01),
                    input_idCard(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => Passport_id()));
                      },
                      child: Text(
                        'FOREIGNER / ชาวต่างชาติ',
                        style: TextStyle(
                            color: Color(0xff087494),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: register2_button(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Passport_id extends StatefulWidget {
  const Passport_id({Key? key}) : super(key: key);

  @override
  State<Passport_id> createState() => _Passport_idState();
}

class _Passport_idState extends State<Passport_id> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("images/bg01.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.35,
                    ),
                    Text(
                      'หมายเลขหนังสือเดินทาง',
                      style: TextStyle(
                        color: Color(0xff087494),
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'โปรดกรอกหมายเลขหนังสือเดินทาง',
                      style: TextStyle(
                          color: Color(0xff087494),
                          fontSize: width * 0.043,
                          fontWeight: FontWeight.bold,
                          height: 2),
                    ),
                    SizedBox(height: height * 0.04),
                    Text(
                      'Please enter your passport number',
                      style: TextStyle(
                          color: Colors.grey, fontSize: width * 0.032),
                    ),
                    SizedBox(height: height * 0.01),
                    input_passport_number(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                            builder: (BuildContext context) => register_2()));
                      },
                      child: Text(
                        'สัญชาติไทย / Thai Nationality',
                        style: TextStyle(
                            color: Color(0xff087494),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: register2_button(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Privacy_Policy extends StatefulWidget {
  const Privacy_Policy({Key? key}) : super(key: key);

  @override
  State<Privacy_Policy> createState() => _Privacy_PolicyState();
}

class _Privacy_PolicyState extends State<Privacy_Policy> {
  var size, height, width;
  int agree_ = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 80, 30, 5),
                child: Column(
                  children: [
                    Text(
                      'เงื่อนไขการลงทะเบียน',
                      style: TextStyle(
                        color: Color(0xff087494),
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ข้อตกลงและเงื่อนไขการลงทะเบียนในระบบ',
                      style: TextStyle(
                          color: Color(0xff087494),
                          fontSize: width * 0.043,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.white,
                      height: height * 0.62,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                                '''
Policy is a deliberate system of guidelines to guide decisions and achieve rational outcomes. A policy is a statement of intent and is implemented as a procedure or protocol. Policies are generally adopted by a governance body within an organization. Wikipedia
Examples of public policy include housing policy, education policy, health policy, etc. So, the housing policy would describe how the government tries to ...
https://helpfulprofessor.com › public-policy-examples
10 Public Policy
Examples (2024)
A well-written and clearly communicated policy helps set clear expectations around employee behaviour and workplace procedures. Let's see how to write one for ...
https://employmenthero.com › what-is-a-workplace-policy
Ultimate Guide to
Workplace Policies and Procedures [2024]
How can you ensure employees adhere to policies and procedures? Workplace policy examples. Tips for writing company policies.
https://employmenthero.com › what-is-a-workplace-policy
Ultimate Guide to
Workplace Policies and Procedures [2024]
'''),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => Color(0xff087494)),
                                    value: 6,
                                    groupValue: agree_,
                                    onChanged: (value) {
                                      setState(() {
                                        agree_ = value!;
                                      });
                                    }),
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    "ข้าพเจ้ายอมรับข้อตกลงและเงื่อนไขการลงทะเบียน",
                                    style: TextStyle(
                                        fontSize: width * 0.036,
                                        color: Color(0xff087494),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: register3_button(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class register_ extends StatefulWidget {
  const register_({Key? key}) : super(key: key);

  @override
  State<register_> createState() => _register_State();
}

class _register_State extends State<register_> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: width,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/bg01.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  imagepicker_(),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  width: width,
                  height: height,
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: register_form()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
