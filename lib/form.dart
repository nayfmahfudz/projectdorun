import 'package:flutter/material.dart';
import 'Appstate.dart';
import 'fom.dart';

class FormBio extends StatefulWidget {
  @override
  _FormBioState createState() => _FormBioState();
}

class _FormBioState extends State<FormBio> {
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      "gambar/dorun-orange-2.png",
      height: 100,
      width: 300,
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
//          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
//                      border: Border.all(),
                      shape: BoxShape.rectangle,
                      color: Colors.white),
                  padding: EdgeInsets.all(10),
                  child: Form(
                      key: formKey1,
                      autovalidate: autoValidate,
                      child: Column(
                          // shrinkWrap: true,
                          // padding: EdgeInsets.all(20),
                          children: <Widget>[
                            logo,
                            SizedBox(height: 24.0),
                            teks,
                            SizedBox(height: 24.0),
                            nama,
                            SizedBox(height: 24.0),
                            email,
                            SizedBox(height: 24.0),
                            password,
                            SizedBox(height: 24.0),
                            alamat,
                            SizedBox(height: 24.0),
                            nomor,
                            SizedBox(height: 24.0),
                            signButton,
                          ])))),
        )));
  }
}

class Kelamin {
  final int index;
  final String text;
  Kelamin({this.index, this.text});
}
