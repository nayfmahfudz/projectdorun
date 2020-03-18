import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/model/berita.dart';
import 'newsdetail.dart';
import 'provider/Restapi.dart';



class Event extends StatelessWidget {
Event(this.boolean,this.tnggfull);  
bool boolean;
bool tnggfull;

  @override
  Widget build(BuildContext context) {
    final berita =Provider.of<Restapi>(context).getberitauser();
    final restapi =Provider.of<Restapi>(context);
    return  Container(
        margin: EdgeInsets.all(5),
          height: tnggfull==null?MediaQuery.of(context).size.height * 0.45:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width ,
          child:
            ListView.builder(
              scrollDirection:boolean==null?Axis.horizontal:Axis.vertical,
              itemCount: restapi.getberitauser().length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      restapi.setid(berita[index].id);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => Newsdetail(index)));
                    },
                    child: Hero(
                        tag: berita[index].id,
                        child: 
              Container(
        margin: EdgeInsets.all(5),
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width ,
          child:Column(
            children:[
                Expanded(flex: 8,
                  child:
                  Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      // borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.network(berita[index].image,
                    fit: BoxFit.contain,)))),
                    
                    // Expanded(
                    //   flex: 2,
                    //   child:
                    // Container(
                    //   color: Colors.white,
                    //   child: Text(restapi.getberitauser()[index].nama,style: TextStyle(color: Colors.orange),),
                    //   padding: EdgeInsets.fromLTRB(3, 3, 3, 10),)
            //         child:Row(
            //           children: <Widget>[
                        
            //             Container(
            //               alignment: Alignment.centerLeft,
            //               padding: EdgeInsets.only(right: 20,left: 30),
            //               child:
            //             Column(

            //               children: <Widget>[
                            
            //                 Text("5",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          
            //                 Text("may",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
            //               ],

            //             ),),
                        
            //             // Align( 
            //             //   alignment: Alignment.centerLeft,
            //             //   child:
            //             Container(
            //               padding: EdgeInsets.only(right: 180),
            //               child:
            //             Column(
            //               children: <Widget>[
            //                 Text("Marathon 5k Run",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            //                 Text("jakarta",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            //               ],

            //             ),)
            //           ],

            //         )

            //       )
            

            // )
                    // )
                    ]
            )
            ))),
    ));
  }
}
