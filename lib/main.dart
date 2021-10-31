// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:adhaarhackathon/converting_response.dart';
import 'package:adhaarhackathon/network.dart';
import 'package:adhaarhackathon/posts.dart';
import 'package:adhaarhackathon/secondpg.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'builder.dart';
import 'package:camera/camera.dart';

void main() {

  //WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(
    home: myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  final formkey = GlobalKey<FormState>();

  final TextEditingController _uidText = TextEditingController();
  //final TextEditingController _txnIdText = TextEditingController();
  Future<optApi>? _datas;
  var uuid = Uuid();

  void getRes(String uid, var txnId) {
    setState(() {
      

      if (uid != null && txnId != null) {
        _datas = createOtp(uid, txnId.v4());
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => otppage()));
            
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<optApi>(
    //     future: _datas,
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {

    //         return Text(snapshot.data!.txnId);
    //       } else if (snapshot.hasError) {
    //         return Text('${snapshot.error}');
    //       }


          return Scaffold(
        appBar: AppBar(
          title: const Text("Authenticate"),
          shadowColor: Colors.pink.shade200,
          elevation: 20,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ListView(children: [
                const Padding(padding: EdgeInsets.only(top: 150)),
                Container(
                  width: 160,
                  height: 350,
                  decoration: BoxDecoration(
                      border: Border.all(width: 6, color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                                  color: Colors.black45, offset: Offset(9.0, 8.0))
                      ]),
                  child: Center(
                    child: Center(
                      child: ListView(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Image(
                            image: const AssetImage("images/logo.jpg"),
                            width: 150,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 12.0, right: 8.0, left: 8.0),
                            child: TextFormField(
                                    
                                    controller: _uidText,
                                    key: formkey,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "This field shouldn't empty";
                                } else {
                                  return null;
                                }
                              },
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
                             // controller: _txnIdText,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "PHONE NUMBER (optional)",
                                  hintText: "Enter Your Phone Number",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0))),
                            ),
                          ),
                           Padding(
                              padding: const EdgeInsets.only(
                                  top: 12.0, right: 70, left: 70),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  getRes(_uidText.text, uuid);
                                  
                                },
                                icon: const Icon(Icons.message),
                                label: const Text("SEND OTP"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )),
                          Icon(
                            Icons.verified,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ])),
        ));
        
  }
}
