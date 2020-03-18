import 'package:flutter/material.dart';
import 'Description.dart';
class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.status,
    this.terdaftar,
    this.hari
  });

  final Widget thumbnail;
  final String title;
  final String status;
  final String terdaftar;
  final String hari;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      
            
             thumbnail,
         
          Expanded(
            flex: 3,
            child: Description(
              status: status,
              title: title,
              terdaftar: terdaftar,
              hari: hari,
            ),
          ),
        ],
      ),
    );
  }
}