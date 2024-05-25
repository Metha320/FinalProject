import 'package:flutter/material.dart';

class birthday_display extends StatefulWidget {
  const birthday_display({Key? key}) : super(key: key);

  @override
  State<birthday_display> createState() => _number_State();
}

class _number_State extends State<birthday_display> {
  var size, height, width;
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;
    double iconSize_ = width*0.05;

    return InkWell(
      onTap: () {
        /*showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) => SizedBox(
            height: height * 0.35,
            child: CupertinoDatePicker(
              maximumDate: DateTime.now(),
              backgroundColor: Colors.white,
              initialDateTime: dateTime,
              onDateTimeChanged: (DateTime newTime) {
                setState(() => dateTime = newTime);
              },
              use24hFormat: true,
              mode: CupertinoDatePickerMode.date,
            ),
          ),
        );*/
      },
      child: Container(
        alignment: Alignment.centerLeft,
        height: height * 0.05,
        width: width*0.32,
        decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffBCBCBC))),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Icon(
                Icons.calendar_today_outlined,
                size: iconSize_,
                color: Color(0xff909090),
              ),
            ),
            Container(
              margin: EdgeInsets.only(),
              child: Text(
                '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                style: TextStyle(fontSize: fontSize_, color: Color(0xff087494)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
