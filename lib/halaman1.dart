import 'package:flutter/material.dart';
import 'package:test2/promosi.dart';
import 'Category.dart';
import 'Event.dart';
import 'Merchant.dart';
import 'adsiklan.dart';
import 'provider/Restapi.dart';
import 'package:provider/provider.dart';
import 'model/apirequest.dart';

class HalamanPertama extends StatefulWidget {
  @override
  _HalamanPertamaState createState() => _HalamanPertamaState();
  
}

class _HalamanPertamaState extends State<HalamanPertama> {
  @override
  void initState() {
    getberita(context);
    getagenda(context);
    getiklan(context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final restapi =Provider.of<Restapi>(context);
    return 
    SingleChildScrollView(
      child:Stack(
      children:[
        Positioned(child: 
        Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width
        ),),
      Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Align(alignment: Alignment.centerLeft, child:  Text("News",style: TextStyle(fontSize: 35,color:Color.fromRGBO(237 , 155 , 12, 1)),),),
          Event(null,null),
          Align(alignment: Alignment.centerLeft, child:  Text("Category",style: TextStyle(fontSize: 35,color:Color.fromRGBO(237 , 155 , 12, 1)),),),
          Category(),
          Align(alignment: Alignment.centerLeft, child:  Text("Promosi",style: TextStyle(fontSize: 35,color:Color.fromRGBO(237 , 155 , 12, 1)),),),
          Promosi(),
          Align(alignment: Alignment.centerLeft, child:  Text("Merchant",style: TextStyle(fontSize: 35,color:Color.fromRGBO(237 , 155 , 12, 1)),),),
          Merchant(),
        ],
      ),
    )]));
    
  }
}
