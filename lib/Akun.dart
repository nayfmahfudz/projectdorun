import 'package:flutter/material.dart';
import 'EditProfile.dart';
import 'Gantipassword.dart';
import 'model/User.dart';
import 'model/apirequest.dart';
import 'provider/Restapi.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'fom.dart';

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restapi = Provider.of<Restapi>(context);
    return Container(
      
      width: 325,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        
        child: ListView(
        
         padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Colors.orange,
                          child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                            child: CircleAvatar(
                    radius: 90,
  child: ClipOval(
    child: Image.network(restapi.getuser().image),
  ),
                  ),
              ),
            ),
            ListTile(
              
              title: Text(
                "News",
              ),
              contentPadding: EdgeInsets.all(4),
              onTap: (){
                  Navigator.of(context).pushNamed("/News");
              },
             leading: Icon(Icons.fiber_new), 
            ),
            ListTile(
              
              title: Text(
                "Ganti Password",
              ),
              contentPadding: EdgeInsets.all(4),
              onTap: (){
                   ;
                  Navigator.of(context).pushNamed("/gantipassword");
              }
               ,
              leading: Icon(Icons.vpn_key),
            ),
            ListTile(
              leading: Icon(Icons.mode_edit),
              title: Text(
                "Edit Profile",
              ),
              contentPadding: EdgeInsets.all(4),
              onTap: (){
                restapi.setboolean(false);
                namainputcontroller.text=restapi.getuser().nama ;
                emailinputcontroller.text=restapi.getuser().email ;
                nomorinputcontroller.text=restapi.getuser().telpon ;
                 alamatinputcontroller.text=restapi.getuser().alamat;
                print(restapi.getuser());
                Navigator.of(context).pushNamed("/editprofile");
              },
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text(
                "History Orderan ",
              ),
              contentPadding: EdgeInsets.all(4),
              // onTap: ,
             
            ),
            ListTile(
              leading:Icon(Icons.exit_to_app), 
              title: Text(
                "Exit",
              ),
              contentPadding: EdgeInsets.all(4),
              onTap:(){
                  keluar(context);
              }  ,
            ),
          ],
        ),
      ),
    );
  }
}
