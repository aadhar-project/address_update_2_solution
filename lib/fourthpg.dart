import 'dart:ffi';

import 'package:flutter/material.dart';

class addressformpage extends StatefulWidget {
  const addressformpage({Key? key}) : super(key: key);

  @override
  _addressformpageState createState() => _addressformpageState();
}

class _addressformpageState extends State<addressformpage> {
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 100, left: 100),
              child: Text(
                "Address Update Form",
                style: TextStyle(
                    color: Colors.redAccent.shade400,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Flat,House no.,Building,Apartment",
                    hintText: "Enter Your Flat,House no.,Building,Apartment",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
              child: TextFormField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    labelText: "Street Name",
                    hintText: "Enter Your Street Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Area Name",
                    hintText: "Enter Your Area Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "District",
                    hintText: "Enter Your District Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Pincode",
                    hintText: "Enter Your Pincode",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "State",
                    hintText: "Enter Your State Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 70, left: 70),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.verified_user),
                  label: Text("VERIFY ADDRESS"),
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
