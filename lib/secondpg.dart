import 'dart:convert';

import 'package:adhaarhackathon/posts.dart';

import 'package:flutter/material.dart';
import 'package:adhaarhackathon/thirdpg.dart';
import 'package:adhaarhackathon/converting_response.dart';
import 'main.dart';

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  _otppageState createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _otpText = TextEditingController();
 

  //Decode(response.body));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authenticate"),
        shadowColor: Colors.pink.shade200,
        elevation: 20,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.only(top: 100, bottom: 100)),
            const Center(
              child: Text(
                "OTP",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, right: 20.0, left: 20.0),
              child: TextFormField(
                controller: _otpText,
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
                    labelText: "OTP NUMBER",
                    hintText: "Enter The Otp Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 70, left: 70),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const scanningpage()));
                    });
                  },
                  icon: const Icon(Icons.message),
                  label: const Text("VERIFY OTP"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                )),
          ],
        ),
      ),
    );
  }
}
