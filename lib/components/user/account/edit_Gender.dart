import 'package:flutter/material.dart';

class Gender_edit extends StatefulWidget {
  const Gender_edit({Key? key}) : super(key: key);

  @override
  State<Gender_edit> createState() => _Gender_editState();
}

class _Gender_editState extends State<Gender_edit> {
  var size, height, width;
  int gender_ = 5;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;

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
          Text('เพศ', style: TextStyle(fontSize: fontSize_, color: Colors.grey)),
          Radio(
            splashRadius: 0,
              fillColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff087494)),
              value: 4,
              groupValue: gender_,
              onChanged: (value) {}),
          Text("ชาย", style: TextStyle(fontSize: fontSize_, color: Colors.grey)),
          Radio(
            splashRadius: 0,
              fillColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff087494)),
              value: 5,
              groupValue: gender_,
              onChanged: (value) {}),
          Text("หญิง", style: TextStyle(fontSize: fontSize_, color: Colors.grey)),
        ],
      ),
    );
  }
}
