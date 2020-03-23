
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/Merchant.dart';
import 'package:test2/provider/Restapi.dart';

import 'Event.dart';
import 'model/apirequest.dart';

class MerchantDetail extends StatelessWidget {
   MerchantDetail(this.index);
    int index;

  @override
  Widget build(BuildContext context) {
    final komentar = Provider.of<Restapi>(context).getkomentar();
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
           child:Stack(children: <Widget>[
             
                         Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/3,
               decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage(agenda[index].image)
                   )
               ),),
               Positioned(
                 left: 1,
                 right: 1,
                 bottom: 30,
                //  top: 1,
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
                       Align(child: Text(agenda[index].nama,textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),alignment: Alignment.centerLeft,),
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
               ]
               )
              
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
            Text("Event Sekarang",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        
             Event(),
             Divider(thickness: 10,),
              Text("Ulasan",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ListView.builder(
              physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: komentar.length,
                  itemBuilder: (context, index) =>
                   Column(children: <Widget>[
                                  ListTile(
                                    title: Text(komentar[index]["nama"],style: TextStyle(fontWeight: FontWeight.bold),),
                                    subtitle:Text.rich(
                                      TextSpan(
                                        children: <TextSpan>[
                                        
                                        TextSpan(text:komentar[index]["deskripsi"],style: TextStyle(fontWeight: FontWeight.bold),),
                                         ] )
                                    )
                                  )]
                                 
                  
                  

                          ),
          ),
              ]))
              ])
            
     
        );
 
  }
}


