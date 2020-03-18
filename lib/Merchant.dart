import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/merchantdetail.dart';

import 'model/apirequest.dart';
import 'provider/Restapi.dart';

class Merchant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final restapi = Provider.of<Restapi>(context);
    final agenda = Provider.of<Restapi>(context).getinfoagenda();
    return Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            physics: ScrollPhysics(),  
            
            shrinkWrap: true,
            itemExtent: 103,
            scrollDirection: Axis.horizontal,
            itemCount: agenda.length,
            itemBuilder: (context, index) {
              return  
                  GestureDetector(
                      onTap: () {
                        restapi.setid(agenda[index].id);            
                        getkomentar(context,Provider.of<Restapi>(context,listen: false).getid());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => MerchantDetail(index)));
                      },
                      child: Hero(
                        tag:agenda[index].id ,
                  child:Container(
                      child: Column(children: [
                        
                    Flexible(
                      flex: 3,
                                          child: Container(

                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red,
                            image: DecorationImage(image: NetworkImage(agenda[index].image),
                            fit: BoxFit.cover)
                            ),

                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(child: Text(agenda[index].nama,softWrap: true,))),
                  ])

                      
                      )
                  )
              );
            }));
  }
}
