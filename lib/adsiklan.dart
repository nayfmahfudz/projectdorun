import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/Restapi.dart';


class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  @override
 
  Widget build(BuildContext context) {
 
    final Restapi restapi = Provider.of<Restapi>(context,listen: false);
    return Container(
      height: 150,
        width: MediaQuery.of(context).size.width,
        // margin: EdgeInsets.all(3),
        // padding: EdgeInsets.all(3),
        child: ListView.builder(
            physics: ScrollPhysics(),
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            itemExtent: 103,
            scrollDirection: Axis.horizontal,
            itemCount: restapi.getinfoiklan().length,
            itemBuilder: (context, index) {
              return Row(children: <Widget>[
                Container(
                    child: Column(children: [
                  // color: Colors.red,
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                  Text(restapi.getinfoiklan()[index].caption),
                ])

                    // CircleAvatar(
                    //   radius: 30,
                    //   backgroundColor: Colors.red,
                    //   child: Text(_event[index].toString()),
                    // )
                    )
              ]);
            }));
  }
}
