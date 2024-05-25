import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class number_lineID_display extends StatefulWidget {
  const number_lineID_display({Key? key}) : super(key: key);

  @override
  State<number_lineID_display> createState() => _number_State();
}

class _number_State extends State<number_lineID_display> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;
    double iconSize_ = width*0.05;

    return Row(
      children: [
        Expanded(child: Container(
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
                child: Icon(Icons.phone_in_talk, color: Colors.grey,size: iconSize_,),
              ),
              Text(
                '098-9855-423',
                style: TextStyle(
                    color: Color(0xff087494),
                    fontSize: fontSize_,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )),
        SizedBox(width: width*0.02,),
        Expanded(child: Container(
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
                child: FaIcon(FontAwesomeIcons.line, color: Colors.grey, size: iconSize_),
              ),
              Text(
                'maree89',
                style: TextStyle(
                    color: Color(0xff087494),
                    fontSize: fontSize_,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
