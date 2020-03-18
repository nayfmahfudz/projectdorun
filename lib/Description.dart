import 'package:flutter/material.dart';
class   Description extends StatelessWidget {
  const Description({
    Key key,
    this.title,
    this.terdaftar,
    this.hari,
    this.status,
  }) : super(key: key);

  final String title;
  final String terdaftar;
  final String hari;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child:
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Expanded(
            flex: 1,
            child:
          Row(children: <Widget>[
            Expanded(flex: 1,
              child:
          Text(
            status,
            style: const TextStyle(fontSize: 10.0),
          ),),
          Expanded(flex: 1,
            child:
          Icon(Icons.person,size: 10,),),
          Expanded(flex: 1,
            child:
          Text(
            terdaftar,
            style: const TextStyle(fontSize: 10.0),
          ),
          // const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          ),]
          )),
          Expanded(flex: 1,
            child:
          Text(
            hari,
            style: const TextStyle(fontSize: 15.0),
          ),
          ),
        ],
      ),
    );
  }
}