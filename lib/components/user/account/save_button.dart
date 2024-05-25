
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';


class save_button extends StatefulWidget {
  const save_button({Key? key}) : super(key: key);

  @override
  State<save_button> createState() => _save_buttonState();
}

class _save_buttonState extends State<save_button> {
  final RoundedLoadingButtonController Register_ =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController alreadyHave =
      RoundedLoadingButtonController();

  var width, height, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width * 0.045;
    double buttonSize = height * 0.4;

    return Container(
      height: height * 0.12,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: buttonSize,
              child: FloatingActionButton.extended(
                heroTag: null,
                highlightElevation: 0,
                backgroundColor: Color(0xff087494),
                label: Text('บันทึก',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize_,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: buttonSize,
              child: FloatingActionButton.extended(
                heroTag: null,
                highlightElevation: 0,
                backgroundColor: Colors.transparent,
                label: Text('กลับ',
                    style: TextStyle(
                        color: Color(0xff087494),
                        fontSize: fontSize_-1,
                        letterSpacing: 0)),
                elevation: 0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
