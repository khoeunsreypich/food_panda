import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddRestuarant extends StatefulWidget {
  const AddRestuarant({super.key});

  @override
  State<AddRestuarant> createState() => _AddRestuarantState();
}

class _AddRestuarantState extends State<AddRestuarant> {
  bool isPicked = false;
  var imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  _getImageFromSource('camera');
                },
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: isPicked ? Image.file(imageFile):Image.network('https://i.pinimg.com/564x/ad/73/1c/ad731cd0da0641bb16090f25778ef0fd.jpg',
                    fit: BoxFit.contain,),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  _getImageFromSource(source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
        source: source == "gallery" ? ImageSource.gallery : ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        isPicked = true;
        imageFile = File(pickedFile.path);
      });
      // print('Picked Image: ${File(pickedFile.path)}');
    }
  }
}
