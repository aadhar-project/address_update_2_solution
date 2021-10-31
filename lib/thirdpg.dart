
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class scanningpage extends StatefulWidget {
  const scanningpage({Key? key}) : super(key: key);

  @override
  _scanningpageState createState() => _scanningpageState();
}

class _scanningpageState extends State<scanningpage> {
  // bool _isInitialized = false;
  // @override
  // void initState() {
  //   FlutterMobileVision.start().then((value) => _isInitialized = true);
  //   super.initState();
  // }

  // void startScanning() async {
  //   List<OcrText> textlist;

  //   try {
  //     textlist = await FlutterMobileVision.read(
  //       waitTap: false,
  //       fps: 5,
  //     );
  //     for (OcrText text in textlist) {
  //       // ignore: avoid_print
  //       print("The text is $text");
  //     }
  //     // ignore: empty_catches
  //   } catch (e) {}
  //   Navigator.pop(context);
  // }

  late File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = pickedImage as File;
      } else {
        print("No");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AADHAAR"),
        shadowColor: Colors.pink.shade200,
        elevation: 20,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, right: 70, left: 70, bottom: 400),
              child: ElevatedButton.icon(
                onPressed: () {
                  getImage();
                },
                icon: const Icon(Icons.scanner),
                label: const Text("SCAN DOCUMENT"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              child: Image.file(_image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70.0, left: 70.0, top: 50.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.upload),
              label: const Text("UPLOAD DOCUMENT"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90.0, left: 90.0, top: 20.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text(
                "SUBMIT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          )
        ],
      ),
    );
  }
}
