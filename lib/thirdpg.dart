// ignore_for_file: camel_case_types

import 'package:adhaarhackathon/scanimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
import 'package:camera/camera.dart';

class scanningpage extends StatefulWidget {
  const scanningpage({Key? key}) : super(key: key);

  @override
  _scanningpageState createState() => _scanningpageState();
}

class _scanningpageState extends State<scanningpage> {
  bool _isInitialized = false;
  @override
  void initState() {
    FlutterMobileVision.start().then((value) => _isInitialized = true);
    super.initState();
  }

  void startScanning() async {
    List<OcrText> textlist;

    try {
      textlist = await FlutterMobileVision.read(
        waitTap: true,
        fps: 5,
      );
      for (OcrText text in textlist) {
        // ignore: avoid_print
        print("The text is $text");
      }
      // ignore: empty_catches
    } catch (e) {}
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
                  startScanning();
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
            child: Container(),
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
