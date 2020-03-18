import 'package:flutter/material.dart';

class NextEvent extends StatefulWidget {
  @override
  _NextEventState createState() => _NextEventState();
}

class _NextEventState extends State<NextEvent> {
   final List<Map<String, dynamic>> eventstatus = [

    {'title' : 'sidoarjo run','status':'Succes','hari':'2020-06-20','tangga':'5','color': Colors.red,'jam':'5.00 AM'},
    {'title' : 'bali fest','status':'Succes','hari':'2020-06-20','tangga':'5','color': Colors.red,'jam':'5.00 AM'},
    {'title' : 'tni run','status':'Succes','hari':'2020-06-20','tangga':'5','color': Colors.red,'jam':'5.00 AM'},
    {'title' : 'palembang ','status':'Succes','hari':'2020-06-20','tangga':'5','color': Colors.red,'jam':'5.00 AM'},
    {'title' : 'surockthon','status':'pending','hari':'2020-06-20','tangga':'5','color': Colors.red,'jam':'5.00 AM'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(child:Column(children: <Widget>[
      ListView.builder(
          padding:  EdgeInsets.all(8.0),
          itemExtent: 106.0,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: eventstatus.length,
          itemBuilder: (context, index)=>
      Container(child:

      
      ListTile(
        title: eventstatus[index]['title'],
        subtitle: eventstatus[index]['title'],
      )
      
    ))] ));
  }
}