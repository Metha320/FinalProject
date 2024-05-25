import 'package:flutter/material.dart';

class VisitNo extends StatefulWidget {
  const VisitNo({Key? key, required this.readonly, required this.hintText_}) : super(key: key);
final bool readonly;
final String hintText_;
  @override
  State<VisitNo> createState() => _VisitNoState();
}

class _VisitNoState extends State<VisitNo> {
  var size, height, width;

  TextEditingController textCtrl= TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      width: width,
      height: height * 0.045,
      child: TextFormField(
        readOnly: widget.readonly,
        keyboardType: TextInputType.text,
        controller: textCtrl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: width*0.04,),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 5),
            filled: true,
            fillColor: Color(0xffFAFAFA),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            hintStyle: TextStyle(color: Colors.grey, fontSize: width*0.03),
            hintText: widget.hintText_,
        ),
      ),
    );
  }
}
