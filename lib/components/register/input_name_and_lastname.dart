import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var maskFormatter = new MaskTextInputFormatter(
    mask: '##########',
    filter: { "#": RegExp(r'[a-z A-Z ก-๏]') },
    type: MaskAutoCompletionType.lazy
);

Widget LogR(double w, h, String hintT, eMessage,
    TextEditingController Textcontroller, TextInputType textInputType, double fontSize_) {
  double width_ = w, height_ = h;
  String hintText_ = hintT, errorMessage = eMessage;
  TextEditingController textCtrl = Textcontroller;
  double Fsize = fontSize_;

  return Container(
    width: width_,
    height: height_,
    child: TextFormField(
      inputFormatters: [maskFormatter],
      keyboardType: textInputType,
      controller: textCtrl,
      style: TextStyle(fontSize: Fsize),
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
          hintText: hintText_),
      validator: (value) {
        if (value!.isEmpty || !RegExp(r'^[a-zA-Zก-ฮ]+$').hasMatch(value)) {
          return errorMessage;
        } else {
          return null;
        }
      },
    ),
  );
}
