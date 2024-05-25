import 'package:flutter/material.dart';

class password_ extends StatefulWidget {
  const password_({Key? key}) : super(key: key);

  @override
  State<password_> createState() => _password_State();
}

class _password_State extends State<password_> {
  var size, height, width;
  bool _isHidden = true;
  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.045;
    double iconSize_ = width*0.075;

    return Container(
      child: TextFormField(
        obscureText: _isHidden,
        keyboardType: TextInputType.text,
        controller: textCtrl,
        style: TextStyle(fontSize: fontSize_),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.key,
              size: iconSize_,
              color: Color(0xff087494),
            ),
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Color(0xffFAFAFA),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xffBCBCBC))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff087494))),
            hintStyle: TextStyle(color: Colors.grey, fontSize: fontSize_),
            hintText: "รหัสผ่าน",
          suffixIcon: InkWell(
            onTap: _togglePasswordView,
            child: Icon(
              _isHidden ? Icons.visibility_off : Icons.visibility,
              size: iconSize_,
            ),
          ),
        ),
      ),
    );
  }
  //password hide check
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
