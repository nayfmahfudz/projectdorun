import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:test2/provider/Restapi.dart';


class Detail extends StatelessWidget {
  Detail(this.index);
  final  int index;
  @override
  Widget build(BuildContext context) {
    // int index;
    final restapi = Provider.of<Restapi>(context);
    final agenda = Provider.of<Restapi>(context).getinfoagenda();
    //  agenda[index] = restapi.getid();
    
    return Scaffold(
     appBar: AppBar(
       title: Text("Detail"),
       backgroundColor: Color.fromRGBO(237 , 155 , 12, 1),
     ),
     body:
     
	SingleChildScrollView(
      
      child: 
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Hero(
         tag: agenda[index].id,
         child:
        DefaultTabController(
          length: 3,
          child:
         Column(
             children: <Widget>[ 
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height/3,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: NetworkImage(agenda[index].image)
             )
           ),),
        
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width ,
          // margin: EdgeInsets.fromLTRB(20,10,20,10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(237 , 155 , 12, 1),
           
          ),
          child:PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: TabBar(
                indicator: BoxDecoration(color: Colors.white,),
                labelStyle: TextStyle(color: Colors.white),
                unselectedLabelColor: Colors.black,
                tabs: <Widget>[
                  Tab(child: Text('Deskripsi', style: TextStyle(fontSize: 18.0))),
                  Tab(child: Text('Tanggal', style: TextStyle(fontSize: 18.0))),
                  Tab(child: Text('Qrcode', style: TextStyle(fontSize: 18.0))),
                ],
              ))),
              Container(height: MediaQuery.of(context).size.height,
                child:
              TabBarView(children: [
              Text(agenda[index].deskripsi,style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              Text(agenda[index].tanggal,style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              QrImage(data: agenda[index].qrcode,size: 10,padding:EdgeInsets.fromLTRB(100,50,100,100) ,),
              ]
              ))]),
        
     
	
          )))),
    //       bottomSheet:Align(
    //         alignment: Alignment.bottomCenter,
    //         child: RaisedButton(
    //     onPressed: () {},
    //     child: const Text('Join', style: TextStyle(fontSize: 20)),
    //     color: Color.fromRGBO(237 , 155 , 12, 1),
    //     textColor: Colors.white,
    //     elevation: 5,
    //   ),
    // ), 
         
    floatingActionButton: FloatingActionButton(
      isExtended: true,
      backgroundColor: Colors.orange,
      onPressed: () {
      },
      child: Column(children: <Widget>[
        Center(child:Text("Join")),

      
        
      
      
      ])),
  );
  
  }
}