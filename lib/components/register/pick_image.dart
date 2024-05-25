import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class imagepicker_ extends StatefulWidget {
  @override
  _imagepicker_State createState() => _imagepicker_State();
}

class _imagepicker_State extends State<imagepicker_> {
  var width, height, size;

  /// Variables
  File? imageFile;

  /// Widget
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    double profileSize = height * 0.08;
    double profileIconSize = height * 0.08;
    double minicameraSize = height * 0.02;
    double minicameraIconSize = height * 0.02;

    return Container(
      child: imageFile == null
          ? Column(
              children: [
                Stack(
                  children: [
                    //Chose imageFile
                    InkWell(
                      onTap: _getFromGallery,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: profileSize + 5,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffECECEC),
                          radius: profileSize,
                          child: FaIcon(
                            FontAwesomeIcons.user,
                            size: profileIconSize,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    //Mini camera icon
                    Positioned(
                      top: height * 0.12,
                      left: height * 0.12,
                      child: InkWell(
                        onTap: _getFromGallery,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: minicameraIconSize + 3,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: minicameraIconSize,
                              child: FaIcon(
                                FontAwesomeIcons.camera,
                                size: minicameraSize,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "อัพโหลดรูปโปรไฟล์",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            )
          : Column(
              children: [
                Stack(
                  children: [
                    //Main image
                    InkWell(
                      onTap: _getFromGallery,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: profileSize + 5,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffECECEC),
                          radius: profileSize,
                          backgroundImage: FileImage(imageFile!)
                        ),
                      ),
                    ),

                    //Mini camera icon
                    Positioned(
                      top: height * 0.12,
                      left: height * 0.12,
                      child: InkWell(
                        onTap: _getFromGallery,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: minicameraIconSize + 3,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: minicameraIconSize,
                              child: FaIcon(
                                FontAwesomeIcons.camera,
                                size: minicameraSize,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "อัพโหลดรูปโปรไฟล์",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }


  /// Get from Camera
  _getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
