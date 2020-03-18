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
          padding: EdgeInsets.all(5),
          // alignment: Alignment.topLeft,
          child: Text(
            "Event",
            style: TextStyle(fontSize: 40,color: Color.fromRGBO(237 , 155 , 12, 1)),
          ),
        ),
        Container(
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
                            child: Card(
                              child: Column(children: <Widget>[

                              Expanded(flex: 8,
                                child: 
                               Image.network(
                                agenda[index].image,
                                fit: BoxFit.contain,
                                height: MediaQuery.of(context).size.height * 0.3 ,
                              ),),
                              Expanded(
                    flex: 2,
                    child:
                  Container(
                    color: Colors.white,
                    child: Text(agenda[index].nama,style: TextStyle(color: Colors.orange),),
                    padding: EdgeInsets.fromLTRB(3, 3, 3, 10),)
                              // color: Colors.black,
                              
                              //  Container(
                              //   child: Center(
                              //       child: Text(
                              //     agenda[index].nama.toString(),
                              //     style: TextStyle(
                              //         color: Colors.white, fontSize: 36.0),
                              //   )),
                              // ),
                              )],),
                            )))))),
      ],
    )));
  }
}

