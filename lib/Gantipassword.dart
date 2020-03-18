import 'package:flutter/material.dart';
import "form.dart" ;
import 'fom.dart';


class Gantipass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganti Password'),
      ),
      body: SingleChildScrollView(
              child: Container(
              color: Colors.orange,
                child: Container(
            padding: EdgeInsets.all(50),
            child:
      Form(
                key: formKey2,
                autovalidate: autoValidate,
        child: Column(
              children: <Widget>[
                password,
                SizedBox(height: 24.0),
                passwordbaru,
                SizedBox(height: 24.0),
                passwordver,
                SizedBox(height: 24.0),
                gantiButton
              ],
            ),
            // height: ,
          ),
        ),
      ),
    ));
  }
}