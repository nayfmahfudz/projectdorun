import 'package:flutter/material.dart';
class AppCus extends StatelessWidget {
  const AppCus({
    Key key,
    this.warna,
    this.title,
  
  }): super(key: key);


  final String title;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: warna,
        // border:Border.all(),
        // borderRadius: BorderRadius.circular(50)
      ),
      child: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: TabBar(
            indicator: BoxDecoration(
              color: Colors.black,
            ),

            // borderRadius: BorderRadius.circular(30),
            // border: Border.all()

            labelStyle: TextStyle(color: Colors.white),
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(child: Text(title, style: TextStyle(fontSize: 18.0))),
            ],
          )),
    );
  }
}
