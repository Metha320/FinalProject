import 'package:flutter/material.dart';

class password_remember_ extends StatefulWidget {
  const password_remember_({Key? key}) : super(key: key);

  @override
  State<password_remember_> createState() => _password_remember_State();
}

class _password_remember_State extends State<password_remember_> {
  bool isChecked = false;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState .hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xff087494);
    }

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text('จำรหัสผ่าน', style: TextStyle(fontSize: width*0.04, color: Color(0xff087494)),)
      ],
    );
  }
}
