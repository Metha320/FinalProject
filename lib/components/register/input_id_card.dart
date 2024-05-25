import 'package:flutter/material.dart';

class input_idCard extends StatefulWidget {
  const input_idCard({Key? key}) : super(key: key);

  @override
  State<input_idCard> createState() => _number_State();
}

class _number_State extends State<input_idCard> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      width: width,
      height: height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: textCtrl,
        style: TextStyle(fontSize: height * 0.02),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            filled: true,
            fillColor: Color(0xfff2f1f1),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff087494), width: 1.5)),
            hintStyle: TextStyle(color: Colors.grey),
            hintText: "เลขประจำตัวประชาชน 13 หลัก"),
      ),
    );
  }
}
