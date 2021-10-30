import 'package:adhaarhackathon/splash.dart';
import 'package:flutter/material.dart';
import 'package:adhaarhackathon/splash.dart';

void main() {
  runApp(MaterialApp(
    home: const Splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AADHAAR"),
          shadowColor: Colors.pink.shade200,
          elevation: 20,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ListView(children: [
                Padding(padding: EdgeInsets.only(top: 150)),
                Container(
                  width: 160,
                  height: 350,
                  decoration: BoxDecoration(
                      border: Border.all(width: 6, color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.black45, offset: Offset(9.0, 8.0))
                      ]),
                  child: Center(
                    child: ListView(
                      children: [
                        Padding(padding: const EdgeInsets.only(top: 10)),
                        Image(
                          image: const AssetImage("images/logo.jpg"),
                          width: 150,
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, right: 8.0, left: 8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "UID NUMBER",
                                hintText: "Enter Your UID Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, left: 8.0, top: 12.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "PHONE NUMBER",
                                hintText: "Enter Your Phone Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, right: 70, left: 70),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("SEND OTP"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                )
              ])),
        ));
  }
}
