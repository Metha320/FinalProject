import 'package:flutter/material.dart';

class edit_name extends StatefulWidget {
  const edit_name({Key? key}) : super(key: key);

  @override
  State<edit_name> createState() => _edit_nameState();
}

class _edit_nameState extends State<edit_name> {
  var size, height, width;
  TextEditingController nameCtrl_ = TextEditingController();
  TextEditingController lastnameCtrl_ = TextEditingController();

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.04;

    return Container(
      height: height * 0.05,
      child: TextFormField(
        initialValue: 'มารีย์',
        keyboardType: TextInputType.text,
        //controller: nameCtrl_,
        style: TextStyle(fontSize: fontSize_),
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
            hintText: 'ชื่อ'),
      ),
    );
  }
}
