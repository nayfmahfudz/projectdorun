import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/Detail.dart';
import 'iklandetail.dart';
import 'newsdetail.dart';
import 'provider/Restapi.dart';

class Promosi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restapi = Provider.of<Restapi>(context);
    final iklan = Provider.of<Restapi>(context).getinfoiklan();
 
    return  Container(
      margin: EdgeInsets.all(2),
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width ,
        child:
          ListView.builder(
            
            scrollDirection: Axis.horizontal,
            itemCount: iklan.length,
            itemBuilder: (context, index) => 
            GestureDetector(
                    onTap: () {
                      restapi.setid(iklan[index].id);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => Iklandetail(index)));
                    },
                    child: Hero(
                        tag: iklan[index].id,
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
                  elevation: 0,
                  // color: Colors.transparent,
                  margin: EdgeInsets.all(2),
                  shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.network(iklan[index].image,
                  fit: BoxFit.contain,

                  )
                 
                  ))),
                  // Expanded(
                  //   flex: 2,
                  //   child:
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(3, 3, 3, 10),
                  //     ))
                    ],

                  )

                )
          

          
          
      )
          )));
  }
}