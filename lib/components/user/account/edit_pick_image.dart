import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class imagepicker_edit extends StatefulWidget {
  @override
  _imagepicker_editState createState() => _imagepicker_editState();
}

class _imagepicker_editState extends State<imagepicker_edit> {
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

}
