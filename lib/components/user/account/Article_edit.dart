import 'package:flutter/material.dart';

class Article_edit extends StatefulWidget {
  const Article_edit({Key? key}) : super(key: key);

  @override
  State<Article_edit> createState() => _Article_editState();
}

class _Article_editState extends State<Article_edit> {
  var size, height, width;
  int article_ = 3;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          splashRadius: 0,
            fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xff087494)),
            value: 1,
            groupValue: article_,
            onChanged: (value) {}),
        Text("นาย", style: TextStyle(fontSize: width*0.04, color: Color(0xff087494), fontWeight: FontWeight.bold)),
        Radio(
            splashRadius: 0,
            fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xff087494)),
            value: 2,
            groupValue: article_,
            onChanged: (value) { }),
        Text(
          "นาง",
          style: TextStyle(fontSize: width*0.04, color: Color(0xff087494), fontWeight: FontWeight.bold),
        ),
        Radio(
            splashRadius: 0,
            fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xff087494)),
            value: 3,
            groupValue: article_,
            onChanged: (value) { }),
        Text("นางสาว", style: TextStyle(fontSize: width*0.04, color: Color(0xff087494), fontWeight: FontWeight.bold)),
      ],
    );
  }
}
