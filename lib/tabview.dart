import 'package:flutter/material.dart';

class Tabview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        constraints: BoxConstraints.expand(height: 50),
        child: TabBar(tabs: [
          Tab(text: "Home"),
          Tab(text: "Articles"),
        ]),
      )
    ]);
  }
}
