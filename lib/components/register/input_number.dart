import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class number_ extends StatefulWidget {
  const number_({Key? key}) : super(key: key);

  @override
  State<number_> createState() => _number_State();
}

class _number_State extends State<number_> {
  var size, height, width;

  TextEditingController numberCtrl = TextEditingController();
  TextEditingController idLineCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;
    double iconSize_ = width*0.055;

    return Row(
      children: [
        Expanded(
          flex: 15,
          child: Container(
            height: height * 0.05,
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                LengthLimitingTextInputFormatter(10),
              ],
              keyboardType: TextInputType.number,
              controller: numberCtrl,
              style: TextStyle(fontSize: fontSize_),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_in_talk,
                    size: iconSize_,
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Color(0xffFAFAFA),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xffBCBCBC))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xff087494), width: 1.5)),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "เบอร์โทรศัพท์"),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container()),
        Expanded(
          flex: 15,
          child: Container(
            height: height * 0.05,
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: idLineCtrl,
              style: TextStyle(fontSize: fontSize_),
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: width*0.02, horizontal: width*0.035),
                    child: FaIcon(
                      FontAwesomeIcons.line,
                      size: iconSize_,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Color(0xffFAFAFA),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xffBCBCBC))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0xff087494))),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Line ID"),
            ),
          ),
        ),
      ],
    );
  }
}
