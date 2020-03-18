import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'customlistview.dart';
import 'provider/Restapi.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restapi =Provider.of<Restapi>(context);
    final cart = restapi.getcart();
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang",style: TextStyle(color: Colors.white),),


      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            ListView.builder(
          padding:  EdgeInsets.all(8.0),
          itemExtent: 106.0,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: cart.length,
          itemBuilder: (context, index) {
            return CustomListItem(
              status: cart[index]['status'],
              hari: cart[index]['hari'],
              terdaftar: cart[index]['terdaftar'],
              thumbnail: Container(
                child: Image.network(cart[index]['terdaftar']),),
                title: cart[index]['title'],
            );
            
         
          }),

           
           
          ],
        ),
      ),
      
    );
  }
}