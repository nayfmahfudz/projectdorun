import 'package:flutter/material.dart';
import 'package:test2/halaman3track.dart';
import 'Akun.dart';
import 'halaman1.dart'  ;
import 'halaman2.dart' ;
import 'halaman4.dart' ;
import 'Halamankelima.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
    TabController controller;

  @override

  void initState(){
    controller = new TabController(vsync: this, length: 5);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer:Akun(),
      // key:  _scaffoldKey,
        appBar: AppBar(
  //         leading: Row(
  //           children: <Widget>[
  //             IconButton(
  //   icon: Icon(Icons.gamepad,color: Colors.yellow,),
  //   onPressed: (){
  //     _scaffoldKey.currentState.openDrawer();
  //   },
  //  ), 
  //             Image(image: AssetImage('gambar/dorun-white.png'),
  //                           width: MediaQuery.of(context).size.width*0.50,
  //                           height: 30,),
  //           ],
  //         ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.mail,color: Colors.black,), onPressed: (){
              Navigator.of(context).pushNamed('/Keranjang');
            })
          ],
          elevation: 0,
          backgroundColor:Color.fromRGBO(237 , 155 , 12, 1),
          title: Text("Do(Run)",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
        ),
        body:   TabBarView(
              controller: controller,
              children:[ 
            
             HalamanPertama(),
             HalamanKedua(),
             Trackingrun(),
             Halamankelima(),
             HalamanKeempat(),
             
            ]

        ),
      // ),
      bottomNavigationBar:Material(
        color: Color.fromRGBO(237 , 155 , 12, 1),
          child:TabBar(
            labelPadding: EdgeInsets.all(1),
             controller: controller,
             tabs: <Widget>[
               Tab(icon:  Icon(Icons.home),text: "Home",),
               Tab(icon:  Icon(Icons.list),text: "Event",),
               Tab(icon:  Icon(Icons.my_location),text: "Tracking",),
               Tab(icon:  Icon(Icons.redeem),text: "Reward",),
               Tab(icon:  Icon(Icons.account_circle),text: "Akun",),
             ],
          ),
      
      // onTap: ,

        
      
    ));
    
  }
}
