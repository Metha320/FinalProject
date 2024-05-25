import 'package:flutter/material.dart';

class edit_underlying_disease extends StatefulWidget {
  const edit_underlying_disease({Key? key}) : super(key: key);

  @override
  State<edit_underlying_disease> createState() => _number_State();
}

class _number_State extends State<edit_underlying_disease> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.04;


    return Container(
      width: width,
      height: height * 0.05,
      child: TextFormField(
        keyboardType: TextInputType.text,
        initialValue: 'ไม่มี',
        style: TextStyle(fontSize: fontSize_),
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: 20),
              child: Text('ประวัติการแพ้ยา:', style: TextStyle(color: Colors.grey, fontSize: fontSize_),),
            ),
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Color(0xffFAFAFA),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff087494), width: 1.5)),
        ),
      ),
    );
  }
}
