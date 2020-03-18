import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/provider/Restapi.dart';

class Iklandetail extends StatelessWidget {
  Iklandetail(this.index);
  final  int index;
  @override
  Widget build(BuildContext context) {
    // int index;

    final restapi = Provider.of<Restapi>(context);
    final iklan = Provider.of<Restapi>(context).getinfoiklan();
    //  agenda[index] = restapi.getid();
    
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
           tag: iklan[index].id,
           child:
                         Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/3,
               decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.contain,
                     image: NetworkImage(iklan[index].image)
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
                  // Text(iklan[index].nama,style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ListTile(
                dense: true,
                leading: Icon(Icons.calendar_today),
                title: Text(
                  iklan[index].tanggal_awal,
                ),
                // contentPadding: EdgeInsets.all(4),
                onTap: (){
                  
                }
              ), 
              Divider(),
            Text("Deskripsi",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text(iklan[index].caption,textAlign: TextAlign.left,style: TextStyle(fontSize: 15),),
           
              // ])
              ]
            
     
                      ),
              ),
          // ),
          
    
           
        ]));
  
  }
}