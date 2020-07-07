import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

class Camera extends StatefulWidget {
  @override
   _CameraState createState() => _CameraState();
}
class _CameraState extends State<Camera> {

  File _image;
   @override
   Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          Center(
            child: _image == null ? Text('No image,') : Image.file(_image), 
          ),
          SizedBox(
            width: 150.0,
            height: 50.0,
            child:RaisedButton (
            onPressed: openGallery,
            child: Icon(Icons.add_a_photo),         
          ),
          ),
         ],
      ),
    );
  }
  Future openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = picture;
    });
  }
} 