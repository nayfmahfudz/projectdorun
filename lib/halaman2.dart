import 'package:flutter/material.dart';
import 'Detail.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'detailrev.dart';
import 'provider/Restapi.dart';
import 'model/apirequest.dart';


class HalamanKedua extends StatefulWidget {
  @override
  _HalamanKeduaState createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<HalamanKedua> {
  @override
  void initState() {
    getagenda(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int id;
    final restapi = Provider.of<Restapi>(context);
    final agenda = Provider.of<Restapi>(context).getinfoagenda();
    
    return SingleChildScrollView(
        child: Container(
            child: Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.1,
          padding: EdgeInsets.all(10),
          // alignment: Alignment.topLeft,
          child: Text(
            "Event",
            style: TextStyle(fontSize: 40,color: Color.fromRGBO(237 , 155 , 12, 1)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
            child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: agenda.length,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      restapi.setid(agenda[index].id);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => Detailrev(index)));
                    },
                    child: Hero(
                        tag: agenda[index].id,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.4,
                                                          child: ListView(
                                children: <Widget>[
                                  
                             
                                                             Card(

                                  
                                  child: 
                                  // Column(children: <Widget>[

                                  Container(
                                     width: double.maxFinite,
                      height: 205.0,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      // child: Image.network(agenda[index].image,fit: BoxFit.cover,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: agenda[index].image!=null?NetworkImage(
                                  agenda[index].image):null,
                                  // AssetImage("gambar/5.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                                    // child: 
                                  //  Image.network(
                                  //   agenda[index].image,
                                  //   fit: BoxFit.cover,
                                  //   height: MediaQuery.of(context).size.height * 0.3 ,
                                  // ),
                                  ),
                    //           Expanded(
                    // flex: 2,
                    // child:
                 
                                  // color: Colors.black,
                                  
                                  //  Container(
                                  //   child: Center(
                                  //       child: Text(
                                  //     agenda[index].nama.toString(),
                                  //     style: TextStyle(
                                  //         color: Colors.white, fontSize: 36.0),
                                  //   )),
                                  // ),
                                    // ],),
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
                                      "2${index + 1}",
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
                        Container(
                          padding: EdgeInsets.all(10),
                                                   
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      agenda[index].nama,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      agenda[index].nama,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                )
                                
                        ),
                      ],
                    )
                    //            Container(
                    // color: Colors.white,
                    // child: 
                    // Text(agenda[index].nama,style: TextStyle(color: Colors.orange),),
                    // padding: EdgeInsets.fromLTRB(3, 3, 3, 10),)
                    ],
                              ),
                            ))))),
                            
      ],
    )));
  }
}

