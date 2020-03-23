import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'newsdetail.dart';
import 'provider/Restapi.dart';

class Event extends StatefulWidget {
  @override
  EventState createState() => EventState();
}

//class Event extends StatelessWidget {
class EventState extends State<Event> {
//  EventState(this.boolean, this.tnggfull);
  bool boolean;
  bool tnggfull;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final berita = Provider.of<Restapi>(context).getberitauser();
    final restapi = Provider.of<Restapi>(context);

    return Container(
      height: 310,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        child: PageView.builder(
          itemCount: 5,
          controller: PageController(viewportFraction: 0.7),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 0.9,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                      Widget>[
                GestureDetector(
                  onTap: () {
                    restapi.setid(berita[i].id);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => Newsdetail(i)));
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: 205.0,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(berita[i].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: 70,
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "2${i + 1}",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "OCT",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                    Flexible(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          berita[i].nama,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          berita[i].tempat ?? '',
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
        ),
      ),
    );

    return Container(
        margin: EdgeInsets.all(5),
        height: tnggfull == null
            ? MediaQuery.of(context).size.height * 0.99
            : MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: boolean == null ? Axis.horizontal : Axis.vertical,
          itemCount: restapi.getberitauser().length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                restapi.setid(berita[index].id);
                Navigator.push(context,
                    MaterialPageRoute(builder: (contex) => Newsdetail(index)));
              },
              child: Hero(
                  tag: berita[index].id,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        Container(
                          height: 310,
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: SizedBox(
                            child: PageView.builder(
                              itemCount: 5,
                              controller: PageController(viewportFraction: 0.7),
                              onPageChanged: (int index) =>
                                  setState(() => _index = index),
                              itemBuilder: (_, i) {
                                return Transform.scale(
                                  scale: i == _index ? 1 : 0.9,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: double.maxFinite,
                                          height: 205.0,
                                          margin: const EdgeInsets.only(
                                              bottom: 10.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                berita[index].image,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        "OCT",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                            Flexible(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Jakarta 250KM Top Marathon 202${i + 1}",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 8,
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Card(
                                    margin: EdgeInsets.all(5),
                                    shape: RoundedRectangleBorder(
                                        // borderRadius: BorderRadius.circular(30),
                                        ),
                                    child: Image.network(
                                      berita[index].image,
                                      fit: BoxFit.contain,
                                    )))),
                      ])))),
        ));
  }
}
