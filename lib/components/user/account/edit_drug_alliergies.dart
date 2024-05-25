import 'package:flutter/material.dart';

class edit_drug_allergies extends StatefulWidget {
  const edit_drug_allergies({Key? key}) : super(key: key);

  @override
  State<edit_drug_allergies> createState() => _number_State();
}

class _number_State extends State<edit_drug_allergies> {
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
              child: Text('โรคประจำตัว:', style: TextStyle(color: Colors.grey, fontSize: fontSize_),),
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
