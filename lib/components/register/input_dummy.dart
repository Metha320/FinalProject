import 'package:flutter/material.dart';

class input_dummy extends StatefulWidget {
  const input_dummy({Key? key}) : super(key: key);

  @override
  State<input_dummy> createState() => _number_State();
}

class _number_State extends State<input_dummy> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      width: width,
      height: height * 0.062,
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: textCtrl,
        style: TextStyle(fontSize: height * 0.02),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_circle,
              size: width * 0.1,
              color: Color(0xff087494),
            ),
            contentPadding: EdgeInsets.only(left: 20),
            filled: true,
            fillColor: Color(0xffe8f4fc),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff087494), width: 1.5)),
            hintStyle:
                TextStyle(color: Color(0xff087494), fontSize: width * 0.04),
            hintText: "ชื่อผู้ใช้หรือเลขบัตรประจำตัวประชาชน"),
      ),
    );
  }
}
