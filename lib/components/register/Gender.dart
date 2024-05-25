import 'package:flutter/material.dart';

class Gender_ extends StatefulWidget {
  const Gender_({Key? key}) : super(key: key);

  @override
  State<Gender_> createState() => _Gender_State();
}

class _Gender_State extends State<Gender_> {
  var size, height, width;
  int gender_ = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.04;

    return Container(
      padding: EdgeInsets.only(left: width * 0.03),
      width: width * 0.55,
      height: height * 0.05,
      decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xffBCBCBC))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('เพศ', style: TextStyle(fontSize: fontSize_)),
          Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff087494)),
              value: 4,
              groupValue: gender_,
              onChanged: (value) {
                setState(() {
                  gender_ = value!;
                });
              }),
          Text("ชาย", style: TextStyle(fontSize: fontSize_)),
          Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff087494)),
              value: 5,
              groupValue: gender_,
              onChanged: (value) {
                setState(() {
                  gender_ = value!;
                });
              }),
          Text("หญิง", style: TextStyle(fontSize: fontSize_)),
        ],
      ),
    );
  }
}
