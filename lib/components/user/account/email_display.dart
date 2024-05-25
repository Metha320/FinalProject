import 'package:flutter/material.dart';

class email_display extends StatefulWidget {
  const email_display({Key? key}) : super(key: key);

  @override
  State<email_display> createState() => _number_State();
}

class _number_State extends State<email_display> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;
    double iconSize = width*0.05;

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
            child: Icon(Icons.email, color: Colors.grey,size: iconSize,),
          ),
          Text(
            'Mareevel89@gmail.com',
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
