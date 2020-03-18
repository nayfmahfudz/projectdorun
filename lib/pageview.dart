import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pagenews extends StatefulWidget {
  @override
  _PagenewsState createState() => _PagenewsState();
}

class _PagenewsState extends State<Pagenews> {
  @override
  Widget build(BuildContext context) {
    int _index = 0;
    return  Container(
                height: 310,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                  child:PageView.builder(
                      itemCount: 5,
                      controller: PageController(viewportFraction: 0.7),
                      onPageChanged: (int index) =>
                          setState(() => _index = index),
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.9,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: double.maxFinite,
                                  height: 205.0,
                                  margin: const EdgeInsets.only(bottom: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://placeimg.com/640/480/any'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        width: 70,
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "2${i + 1}",
                                                style: TextStyle(
                                                    fontSize: 28,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "OCT",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Flexible(
                                        child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Jakarta 250KM Top Marathon 202${i + 1}",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Jakarta",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    )),
                                  ],
                                )
                              ]),
                        );
                      },
                    
      
    )));
  }
}


