import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test2/challenge.dart';
import 'package:test2/promosi.dart';
import 'package:test2/toko.dart';
import 'Detail.dart';
import 'tabview.dart';
import 'halaman2.dart';
import 'template/appbartemplate.dart';


class Halamankelima extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
 
    return  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width/2,
        child: 
        DefaultTabController(
          length: 2,
          child: ListView.builder(itemBuilder:
          (context ,index) =>
       Column(
      
      
      
      children: <Widget>[
        
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width ,
          margin: EdgeInsets.fromLTRB(20,10,20,10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(237 , 155 , 12, 1),
           
          ),
          child:PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: TabBar(
                
                indicator: BoxDecoration(color: Colors.black,),

                // indicatorSize: ,
                // borderRadius: BorderRadius.circular(30),
                // border: Border.all()
                //  ),
                // labelColor: ,
                labelStyle: TextStyle(color: Colors.white),
                unselectedLabelColor: Colors.black,
                tabs: <Widget>[
                  Tab(child: Text('Penawaran', style: TextStyle(fontSize: 18.0))),
                  
                  Tab(child: Text('Challenge', style: TextStyle(fontSize: 18.0))),
                ],
              ))),
              Promosi(),
              Container(height: 500,
              
                child:
              TabBarView(children: [
                Toko(),
                Challenge(),
              ]
              )),
        
                              

                  
                  
         
      
      
    
      //     TabBarView(children:[
      //                     Container(
      //               child: Text("Home Body"),
      //             ),
      //             Container(
      //               child: Text("Articles Body"),
      //             ),
      //             Container(
      //               child: Text("User Body"),
      //             ),]),
      //     Container(
      //       width: MediaQuery.of(context).size.width * 1,
      //       height: MediaQuery.of(context).size.height * 0.1,
      //       padding: EdgeInsets.all(5),
      //       // alignment: Alignment.topLeft,
      //       child: Text("Event",style: TextStyle(fontSize: 40),),
      //     ),

      //      Container(
              
      //         child: ListView.builder(
      //           physics: ScrollPhysics(),
      //           shrinkWrap: true,
      //             scrollDirection: Axis.vertical,
      //             itemCount: event.length,
      //             itemBuilder: (context, index) => GestureDetector(
      //               onTap: (){
      //                 Navigator.push(context,PageTransition(child: Detail(event), type: PageTransitionType.downToUp));
      //               },
      //               child:Hero(tag: event[index]['index'], 
      //               child:
      //               Container(
                    
      //                 width: MediaQuery.of(context).size.width * 0.8,
      //                 height: MediaQuery.of(context).size.height * 0.30,
      //                 child: Card(
      //                   color: Colors.black,
      //                   margin: EdgeInsets.all(5),
      //                   child: Container(
      //                     child: Center(
      //                         child: Text(
      //                       event[index]['title'].toString(),
      //                       style: TextStyle(color: Colors.white ,fontSize: 36.0),
      //                     )),
      //                   ),
      //                 )))))),
        
      ],
    ))));


      
  }
  }
