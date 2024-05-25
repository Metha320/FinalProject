import 'package:flutter/material.dart';

class email_ extends StatefulWidget {
  const email_({Key? key}) : super(key: key);

  @override
  State<email_> createState() => _number_State();
}

class _number_State extends State<email_> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;
    double iconSize_ = width*0.055;

    return Container(
      width: width,
      height: height * 0.05,
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: textCtrl,
        style: TextStyle(fontSize: fontSize_),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
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
            hintText: "อีเมล"),
      ),
    );
  }
}
