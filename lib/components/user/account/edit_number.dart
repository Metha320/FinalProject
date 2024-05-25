import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class number_edit extends StatefulWidget {
  const number_edit({Key? key}) : super(key: key);

  @override
  State<number_edit> createState() => _number_editState();
}

class _number_editState extends State<number_edit> {
  var size, height, width;

  TextEditingController numberCtrl = TextEditingController();
  TextEditingController idLineCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double iconSize_ = width * 0.052;
    double fontSize_ = width * 0.04;

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
              initialValue: '098-985-5423',
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
        Container(width: width*0.025,),
        Expanded(
          flex: 15,
          child: Container(
            height: height * 0.05,
            child: TextFormField(
              keyboardType: TextInputType.text,
              initialValue: 'maree89',
              style: TextStyle(fontSize: fontSize_),
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: width*0.025, horizontal: width*0.035),
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
