import 'package:flutter/material.dart';

class underlying_Disease extends StatefulWidget {
  const underlying_Disease({Key? key}) : super(key: key);

  @override
  State<underlying_Disease> createState() => _number_State();
}

class _number_State extends State<underlying_Disease> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;

    return Container(
      width: width,
      height: height * 0.05,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff087494)),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Text(
              'โรคประจำตัว:  ',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: fontSize_,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'ไม่มี',
            style: TextStyle(
                color: Color(0xff087494),
                fontSize: fontSize_,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
