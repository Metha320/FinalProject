import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datePicker_appointment extends StatefulWidget {
  const datePicker_appointment({Key? key}) : super(key: key);

  @override
  State<datePicker_appointment> createState() => _number_State();
}

class _number_State extends State<datePicker_appointment> {
  var size, height, width;
  bool pressed = false;
  DateTime date_ = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.03;
    double iconSize_ = width * 0.05;
    Color bluetxt = Color(0xff005589);

    return InkWell(
      onTap: () {
        showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) => Container(
            color: Colors.white,
            height: 335,
            child: Column(
              children: [
                SizedBox(
                  height: 275,
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.white,
                    minimumDate: date_,
                    maximumDate: DateTime(date_.year, date_.month+2, 31),
                    initialDateTime: date_,
                    onDateTimeChanged: (DateTime newTime) {
                      setState(() => date_ = newTime);
                    },
                    use24hFormat: true,
                    mode: CupertinoDatePickerMode.date,
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: width * 0.45,
                    child: ElevatedButton(
                      onPressed: () => {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) => Container(
                            color: Colors.white,
                            height: 335,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 275,
                                  child: CupertinoDatePicker(
                                    backgroundColor: Colors.white,
                                    initialDateTime: date_,
                                    onDateTimeChanged: (DateTime newTime) {
                                      setState(() => date_ = newTime);
                                    },
                                    use24hFormat: true,
                                    mode: CupertinoDatePickerMode.time,
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 50,
                                    width: width * 0.45,
                                    child: ElevatedButton(
                                      onPressed: () =>
                                          Navigator.of(context)..pop()..pop(),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                            color: bluetxt,
                                            fontSize: width * 0.05),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'OK',
                        style:
                            TextStyle(color: bluetxt, fontSize: width * 0.05),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: height * 0.05,
        decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xffBCBCBC))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.calendar_today_outlined,
                  size: iconSize_,
                  color: Color(0xff909090),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '${date_.day}/${date_.month}/${date_.year}  ${date_.hour}:${date_.minute}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: bluetxt, fontSize: fontSize_),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
