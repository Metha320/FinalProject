import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class search_ extends StatefulWidget {
  const search_({Key? key}) : super(key: key);

  @override
  State<search_> createState() => _search_State();
}

class _search_State extends State<search_> {
  var size, height, width;

  TextEditingController textCtrl= TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      width: width,
      height: height * 0.05,
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: textCtrl,
        style: TextStyle(fontSize: width*0.04),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: width * 0.06,
            ),
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Color(0xffFAFAFA),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            hintStyle: TextStyle(color: Colors.grey),
            hintText: "ค้นหาบริการของเรา"),
      ),
    );
  }
}
