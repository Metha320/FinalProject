import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Gender_display extends StatefulWidget {
  const Gender_display({Key? key}) : super(key: key);

  @override
  State<Gender_display> createState() => _Gender_displayState();
}

class _Gender_displayState extends State<Gender_display> {
  var size, height, width;
  int gender_ = 5;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.035;

    return Container(
      padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
      // width: width * 0.55,
      height: height * 0.05,
      decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xffBCBCBC))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText('เพศ',
              minFontSize: 8,
              maxLines: 1,
              stepGranularity: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: fontSize_, color: Colors.grey)),
          Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff087494)),
              value: 4,
              groupValue: gender_,
              onChanged: (value) {}),
          AutoSizeText("ชาย",
              minFontSize: 8,
              maxLines: 1,
              stepGranularity: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: fontSize_, color: Colors.grey)),
          Radio(
            fillColor:
                MaterialStateColor.resolveWith((states) => Color(0xff087494)),
            value: 5,
            groupValue: gender_,
            onChanged: (value) {},
          ),
          AutoSizeText("หญิง",
              minFontSize: 8,
              maxLines: 1,
              stepGranularity: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: fontSize_, color: Colors.grey)),
        ],
      ),
    );
  }
}
