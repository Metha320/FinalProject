import 'package:flutter/material.dart';

class Article_ extends StatefulWidget {
  const Article_({Key? key}) : super(key: key);

  @override
  State<Article_> createState() => _Article_State();
}

class _Article_State extends State<Article_> {
  var size, height, width;
  int article_ = 0;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double fontSize_ = width*0.04;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
            fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xff087494)),
            value: 1,
            groupValue: article_,
            onChanged: (value) {
              setState(() {
                article_ = value!;
              });
            }),
        Text("นาย", style: TextStyle(fontSize: fontSize_)),
        Radio(
            fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xff087494)),
            value: 2,
            groupValue: article_,
            onChanged: (value) {
              setState(() {
                article_ = value!;
              });
            }),
        Text(
          "นาง",
          style: TextStyle(fontSize: fontSize_),
        ),
        Radio(
            fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xff087494)),
            value: 3,
            groupValue: article_,
            onChanged: (value) {
              setState(() {
                article_ = value!;
              });
            }),
        Text("นางสาว", style: TextStyle(fontSize: fontSize_)),
      ],
    );
  }
}
