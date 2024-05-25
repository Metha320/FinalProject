import 'package:flutter/material.dart';

import '../../components/user/account/edit_form.dart';
import '../../components/user/account/edit_pick_image.dart';

class edit_info extends StatefulWidget {
  const edit_info({Key? key}) : super(key: key);

  @override
  State<edit_info> createState() => _edit_infoState();
}

class _edit_infoState extends State<edit_info> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: width,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/bg01.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    children: [
                      imagepicker_edit(),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height*0.045,
                            child: Image.asset('images/settings.png', color: Colors.grey,),
                          ),
                          Text(
                            'แก้ไขโปรไฟล์',
                            style: TextStyle(
                                color: Colors.grey, fontSize: width * 0.05),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  width: width,
                  height: height,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20), child: edit_form()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
