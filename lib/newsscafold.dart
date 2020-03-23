import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/provider/Restapi.dart';

import 'Event.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final berita = Provider.of<Restapi>(context).setboolean(true);
    // final restapi =Provider.of<Restapi>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "News",
              style: TextStyle(
                  fontSize: 35, color: Color.fromRGBO(237, 155, 12, 1)),
            ),
          ),
          Expanded(child: Event()),
        ],
      ),
    );
  }
}
