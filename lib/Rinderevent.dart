import 'package:flutter/material.dart';
import 'customlistview.dart';
import 'Description.dart';


class Rinderevent extends StatefulWidget {
  @override
  _RindereventState createState() => _RindereventState();
}

class _RindereventState extends State<Rinderevent> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height/3 ,
      width: MediaQuery.of(context).size.width*0.9 , 
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(20)
      ),
      child:
    CustomListItem(
      hari: "5.00 AM",
      status: "Succes" ,
      terdaftar: "5",
      title: "Jackthon",
       
      thumbnail: Padding(
      padding: const EdgeInsets.all(2),
      child: Center(
        child:
      Column(
        // crossAxisAlignment: CrossAxisAligznment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child:Container(
                    
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
            child:Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child:Center(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[


                  // Expanded(flex: 5, 
                   
                  Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  // ),
                  // Expanded(
                  //   flex: 1,
                  // child:
                  Text("Hari Lagi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  // ),
                ],
              ),),
            )
          
          ),
          ),
          ])),
        
        


    // Container(
    //   height: MediaQuery.of(context).size.height/3 ,
    //   width: MediaQuery.of(context).size.width*0.9 , 
    //   child: Card(
    //     color: Colors.blueAccent,
    //   child: Row(
    //   children: <Widget>[
    //     Expanded(
    //       flex: 3,
    //       child:Column(
    //         children:<Widget>[
    //           Expanded(
    //       flex: 1,
    //       child:
    //        Text("data"),),
    //        Expanded(
    //       flex: 1,
    //       child:
    //        Text("data"),),
    //        Expanded(
    //       flex: 1,
    //       child:
    //        Text("data"),),
    //       ]
    //       ),
    //     ),
    //     Expanded(
    //       flex: 2,
    //       child:
    //     Container(
    //             decoration:  BoxDecoration(color: Colors.red,),
    //           ),),
    //   ],

    //   ),
    //   ),
      
    )));
  }
}