import 'package:flutter/material.dart';

class birthday_edit extends StatefulWidget {
  const birthday_edit({Key? key}) : super(key: key);

  @override
  State<birthday_edit> createState() => _number_State();
}

class _number_State extends State<birthday_edit> {
  var size, height, width;
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double iconSize_ = width * 0.045;
    double fontSize_ = width * 0.04;
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: height * 0.05,
        decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffBCBCBC))),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: width*0.02),
              child: Icon(
                Icons.calendar_today_outlined,
                size: iconSize_,
                color: Color(0xff909090),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: width * 0.055),
              child: Text(
                '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                style: TextStyle(fontSize: fontSize_, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
