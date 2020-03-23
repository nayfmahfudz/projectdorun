import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/Restapi.dart';
import 'fom.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final restapi = Provider.of<Restapi>(context);
    return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("Edit Profile"),
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
                      child: Column(
                        children: <Widget>[
                          Container(
            
            color: Colors.white,
            height: MediaQuery.of(context).size.height*0.55,
            // padding: EdgeInsets.all(20),
            child: Stack(fit: StackFit.loose, 
            children: <Widget>[
              
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color:Color.fromRGBO(237 , 155 , 12, 1),
              ),
              Positioned(
                top: 1,
                left: 10.0,
                right: 10.0,
                child:
Padding(
  padding: EdgeInsets.only(top:25),
  child:   CircleAvatar(
  
      radius: 125,
  
      child: ClipOval(
  
        child: Image.network(restapi.getuser().image),
  
      )
  
  ),
),),
              Positioned(
                // top: -90,
                left: 1,
                right: 1,
                bottom: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    restapi.getuser().nama,
                    style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // Positioned(
              //   top: 100,
              //   left: 1,
              //   right: 1,
              //   bottom: 500,
              //   child: 
                    ],
                  ),
                 
            
          
    ),
                         Container(
                            child:Form(
                key: formKey3,
                autovalidate: autoValidate,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget> [     
              nama,
              SizedBox(height: 24.0),
              email,
              SizedBox(height: 24.0),
              alamat,
              SizedBox(height: 24.0),
              nomor,
              SizedBox(height: 24.0),
              
              editButton,
                    ])
              ))]
                      )));
  }
}
