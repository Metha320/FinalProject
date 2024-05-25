import 'package:flutter/material.dart';
import 'package:s_pro/components/user/account/Gender_display.dart';

import 'Birthday_display.dart';
import 'Log_out_Button.dart';
import 'drug_allergies.dart';
import 'email_display.dart';
import 'number_lindID_display.dart';
import 'underlying_disease.dart';

class display_info extends StatefulWidget {
  const display_info({Key? key}) : super(key: key);

  @override
  State<display_info> createState() => _display_infoState();
}

class _display_infoState extends State<display_info> {
  var width, height, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double paragraph = height * 0.015;

    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Gender_display()),
              SizedBox(
                width: width * 0.02,
              ),
              birthday_display(),
            ],
          ),
          SizedBox(height: paragraph),
          email_display(),
          SizedBox(height: paragraph),
          number_lineID_display(),
          SizedBox(height: paragraph),
          underlying_Disease(),
          SizedBox(height: paragraph),
          drug_allergies(),
          SizedBox(height: height * 0.03),
          logout_button(),
        ],
      ),
    );
  }
}
