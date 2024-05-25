import 'package:flutter/material.dart';
import 'package:s_pro/components/user/account/save_button.dart';
import 'package:flutter/cupertino.dart';

import 'Article_edit.dart';
import 'edit_Gender.dart';
import 'edit_birthday.dart';
import 'edit_drug_alliergies.dart';
import 'edit_email.dart';
import 'edit_lastname.dart';
import 'edit_name.dart';
import 'edit_number.dart';
import 'edit_underlying_disease.dart';

class edit_form extends StatefulWidget {
  const edit_form({Key? key}) : super(key: key);

  @override
  State<edit_form> createState() => _edit_formState();
}

class _edit_formState extends State<edit_form> {
  var size, height, width, staticHeight, first_last_boxsize;

  //Widget size
  double genderFontSize = 14;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    staticHeight = height * 0.05;
    first_last_boxsize = width * 0.42;
    double whiteSpace = 10;

    return Stack(
      children: [Column(
        children: [
          /***** Article *****/
          Article_edit(),

          /***** First-Lastname *****/
          Row(
            children: [
              Expanded(
                child: edit_name(),
              ),
              SizedBox(
                width: width * 0.03,
              ),
              Expanded(child: edit_lastname()),
            ],
          ),

          SizedBox(
            height: whiteSpace,
          ),

          // **** Gender and Date ****
          Row(
            children: [
              /**** Gender ****/
              Gender_edit(),
              SizedBox(
                width: width * 0.03,
              ),

              /**** Birthday ****/
              Expanded(child: birthday_edit())
            ],
          ),
          SizedBox(
            height: whiteSpace,
          ),

          /**** Number ****/
          number_edit(),
          SizedBox(
            height: whiteSpace,
          ),

          /**** Email ****/
          email_edit(),
          SizedBox(
            height: whiteSpace,
          ),

          edit_drug_allergies(),
          SizedBox(
            height: whiteSpace,
          ),

          edit_underlying_disease(),


        ],
      ),
        Align(
          alignment: Alignment.bottomCenter,
          child: save_button(),
        ),
      ],
    );
  }
}
