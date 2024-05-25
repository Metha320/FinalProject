import 'package:flutter/material.dart';

class drug_allergies extends StatefulWidget {
  const drug_allergies({Key? key}) : super(key: key);

  @override
  State<drug_allergies> createState() => _number_State();
}

class _number_State extends State<drug_allergies> {
  var size, height, width;

  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;

    return Container(
      width: width,
      height: height * 0.05,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff087494)),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Text(
              'ประวัติการแพ้ยา:  ',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: fontSize_,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'ไม่มี',
            style: TextStyle(
                color: Color(0xff087494),
                fontSize: fontSize_,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
