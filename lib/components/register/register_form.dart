import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:s_pro/components/register/Article_.dart';
import 'package:s_pro/components/register/Button.dart';
import 'package:s_pro/components/register/Gender.dart';
import 'package:s_pro/components/register/Policy_.dart';
import 'package:s_pro/components/register/input_birthday.dart';
import 'package:s_pro/components/register/input_email.dart';
import 'package:s_pro/components/register/input_name_and_lastname.dart';
import 'package:s_pro/components/register/input_number.dart';

class register_form extends StatefulWidget {
  const register_form({Key? key}) : super(key: key);

  @override
  State<register_form> createState() => _register_formState();
}

class _register_formState extends State<register_form> {
  var size, height, width, staticHeight, first_last_boxsize;

  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController phoneNo = new TextEditingController();
  TextEditingController Email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();

  RoundedLoadingButtonController close = new RoundedLoadingButtonController();

  //Radio Group Value
  int article_ = 0;
  int gender_ = 1;

  //Widget size
  double genderFontSize = 14;

  //password hide
  bool _isHidden = true;

  //datePicker
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    staticHeight = height * 0.05;
    first_last_boxsize = width * 0.42;
    double whiteSpace = height*0.012;
    double fontSize_ = width*0.04;
    double iconSize_ = width*0.055;

    return Form(
      child: Column(
        children: [
          /***** Article *****/
          Article_(),

          /***** First-Lastname *****/
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
              flex: 15,
              child: LogR(
                  first_last_boxsize,
                  staticHeight,
                  "ชื่อ",
                  "ข้อมูลไม่ถูกต้อง กรุณากรอกอีกครั้ง",
                  firstName,
                  TextInputType.text,
                  fontSize_),
            ),
            SizedBox(width: width*0.03,),
            Expanded(
              flex: 15,
              child: LogR(
                  first_last_boxsize,
                  staticHeight,
                  "นามสกุล",
                  "ข้อมูลไม่ถูกต้อง กรุณากรอกอีกครั้ง",
                  lastName,
                  TextInputType.text,
                  fontSize_),
            )
          ]),
          SizedBox(
            height: whiteSpace,
          ),

          /***** Gender and Date *****/
          Row(
            children: [
              /***** Gender *****/
              Gender_(),
              SizedBox(
                width: width * 0.03,
              ),

              /***** Birthday *****/
              Expanded(child: birthday_())
            ],
          ),
          SizedBox(
            height: whiteSpace,
          ),

          /***** Number *****/
          number_(),
          SizedBox(
            height: whiteSpace,
          ),

          /***** Email *****/
          email_(),
          SizedBox(
            height: whiteSpace,
          ),

          /***** Password *****/
          Password(width, staticHeight, Icon(Icons.lock, size: iconSize_),
              "รหัสผ่าน", password, TextInputType.text, fontSize_),
          SizedBox(
            height: whiteSpace,
          ),
          Password(
              width,
              staticHeight,
              Icon(Icons.lock, size: iconSize_),
              " ยืนยันรหัสผ่าน",
              confirmpassword,
              TextInputType.text,
              fontSize_),

          /***** Policy *****/
          policy_(),


          SizedBox(
            height: whiteSpace,
          ),
          /***** Button *****/
          Expanded(child: regis_progress_Button_())
        ],
      ),
    );
  }

  //Password
  Widget Password(
      double width,
      double height,
      Icon icon,
      String hintText,
      TextEditingController textController,
      TextInputType textInputType,
      double fontSize_) {
    double w = width, h = height;
    String hintT = hintText;
    TextEditingController textCtrl = textController;
    TextInputType txtInputType = textInputType;
    double iconSize_ = height * 0.6;

    return Container(
      width: w,
      height: h,
      child: TextFormField(
        obscureText: _isHidden,
        keyboardType: txtInputType,
        controller: textCtrl,
        style: TextStyle(
          fontSize: fontSize_,
        ),
        decoration: InputDecoration(
          prefixIcon: icon,
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Color(0xffFAFAFA),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xffBCBCBC))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xffBCBCBC))),
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintT,
          suffixIcon: InkWell(
            onTap: _togglePasswordView,
            child: Icon(
              _isHidden ? Icons.visibility_off : Icons.visibility,
              size: iconSize_,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty || !RegExp(r'^[a-zA-Zก-ฮ]+$').hasMatch(value)) {
            return "errorMessage";
          } else {
            return null;
          }
        },
      ),
    );
  }

  //password hide check
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  //Radio button
}
