
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:test2/fom.dart';
import 'package:test2/model/apirequest.dart';
import 'package:test2/provider/Restapi.dart';


class Detailrev extends StatelessWidget {
  Detailrev(this.index);
  final  int index;
  @override
  Widget build(BuildContext context) {
    final restapi = Provider.of<Restapi>(context);
    final agenda = Provider.of<Restapi>(context).getinfoagenda();
    
    return Scaffold(
     body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height*0.4,
            snap: false,
            floating: false,
            pinned: false,
            actions: <Widget>[
              MaterialButton(
  onPressed: () {},
  color: Colors.orange,
  textColor: Colors.white,
  child: Icon(
    Icons.share,
    size: 24,
  ),
  padding: EdgeInsets.all(16),
  shape: CircleBorder(),
),
            ],
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            brightness: Brightness.light,
            flexibleSpace:  SafeArea(
                        child: FlexibleSpaceBar(
                    background: Hero(
           tag: agenda[index].id,
           child:
                         Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/3,
               decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage(agenda[index].image)
                   )
               ),),
              
                    //   ],
                    // ),
                  ),
                
              ),
            )),
          //   Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          // child: 
          
   SliverList(
              delegate: SliverChildListDelegate([   

        
          
          //  ListView(
          //    shrinkWrap: true,
          //      children: <Widget>[ 
                  Text(agenda[index].nama,style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ListTile(
                dense: true,
                leading: Icon(Icons.calendar_today),
                title: Text(
                  agenda[index].tanggal,
                ),
                // contentPadding: EdgeInsets.all(4),
                onTap: (){
                  
                }
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.location_on),
                title: Text(
                  "Lokasi",
                ),
                // contentPadding: EdgeInsets.all(4),
                onTap: (){
                   
                }
                 ,
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.confirmation_number),
                title: Text(
                  "Ticket",
                ),
                // contentPadding: EdgeInsets.all(4),
                onTap: (){
                   
                }
                 ,
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.track_changes),
                title: Text(
                  "Medal",
                ),
                // contentPadding: EdgeInsets.all(4),
                onTap: (){
                   
                }
                 ,
              ),
              Divider(thickness: 2,),
             Container(
               padding: EdgeInsets.all(15),
               child: Row(
                 
                 children: <Widget>[
                   CircleAvatar(
                  radius: 30.5,
                  backgroundColor: Colors.black,
                                    child: CircleAvatar(
                          radius: 30,
  child: ClipOval(
    child: Image.network(agenda[index].image),
  )),
                   ),
                   Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                                                      child: Column(children: <Widget>[
                       Align(child: Text(agenda[index].nama,textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),alignment: Alignment.centerLeft,),
                       Row(
                         children: <Widget>[
                           Align(child: Text("4.5",textAlign: TextAlign.left,),alignment:Alignment.centerLeft,),
                           Icon(Icons.star,color: Colors.yellow,)
                         ],
                       )
                       
                     ],),
                                    ),
                   )
                 ],
               ),
             ),
            //  Html(
            //    data: ,
            //  )
             
            // Text("Deskripsi",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            // Text(agenda[index].deskripsi,textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
            // Text("Qrcode",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            // QrImage(data: agenda[index].qrcode,size: 240,padding:EdgeInsets.all(10) ,),
            //  Text("Gambar",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            // ListView.builder(
            //   physics: ScrollPhysics(),
            //       shrinkWrap: true,
            //       scrollDirection: Axis.vertical,
            //       itemCount: agenda.length,
            //       itemBuilder: (context, index) =>
            //       GestureDetector(
            //           onTap: () {
            //           },
                      
            //               child: Container(
            //                   width: MediaQuery.of(context).size.width * 0.8,
            //                   height: MediaQuery.of(context).size.height * 0.4,
            //                   child: Card(
            //                     child: Column(children: <Widget>[
            //                      Image.network(
            //                       agenda[index].image,
            //                       fit: BoxFit.contain,
            //                       height: MediaQuery.of(context).size.height * 0.3 ,
            //                     ),]),
                  
            //       )

            //               )),
          // ),
              // ])
              ])
            )],),
     
          floatingActionButton: Padding(
            padding: EdgeInsets.only(left: 30),
                      child: Align(
              alignment: Alignment.bottomCenter,
              child: 
                             SizedBox(
                              width: MediaQuery.of(context).size.width,
                                                        child: RaisedButton(
                  
                  // padding: EdgeInsets.all(10),
        onPressed: () {
          joinagenda(context);
        },
        child: const Text('Join', style: TextStyle(fontSize: 20)),
        color: Color.fromRGBO(237 , 155 , 12, 1),
        textColor: Colors.white,
        // elevation: 5,
      ),
                            ),
              ),
          // ),
          
    
           
          ));
  
  }
}