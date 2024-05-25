import 'package:flutter/material.dart';

class edit_lastname extends StatefulWidget {
  const edit_lastname({Key? key}) : super(key: key);

  @override
  State<edit_lastname> createState() => _edit_lastnameState();
}

class _edit_lastnameState extends State<edit_lastname> {
  var size, height, width;
  TextEditingController nameCtrl_ = TextEditingController();
  TextEditingController lastnameCtrl_ = TextEditingController();

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      height: height * 0.05,
      child: TextFormField(
        initialValue: 'วัลลภาณที',
        keyboardType: TextInputType.text,
        //controller: nameCtrl_,
        style: TextStyle(fontSize: width * 0.04),
        decoration: InputDecoration(
            contentPadding:
            //left: width * 0.03, bottom: height * 0.004
            EdgeInsets.symmetric(horizontal: 20),
            filled: true,
            fillColor: Color(0xffFAFAFA),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff087494), width: 1.5)),
            hintStyle: TextStyle(color: Colors.grey),
            hintText: 'นามสกุล'),
      ),
    );
  }
}
