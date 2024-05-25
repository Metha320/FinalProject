import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class birthday_ extends StatefulWidget {
  const birthday_({Key? key}) : super(key: key);

  @override
  State<birthday_> createState() => _number_State();
}

class _number_State extends State<birthday_> {
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
        showCupertinoModalPopup(
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
        );
      },
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
              margin: EdgeInsets.only(left: width*0.03),
              child: Icon(
                Icons.calendar_today_outlined,
                size: iconSize_,
                color: Color(0xff909090),
              ),
            ),
            Text(
              '${dateTime.day}-${dateTime.month}-${dateTime.year}',
              style: TextStyle(fontSize: fontSize_),
            ),
          ],
        ),
      ),
    );
  }
}
