import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/provider/Restapi.dart';
import 'customlistview.dart';
import 'Description.dart';

class Jadwallari extends StatelessWidget {
    //  Jadwallari(this.index);
  // final  int index;
  final List<Map<String, dynamic>> eventstatus = [
    {'title' : 'jackthon','status':'Succes','hari':'2020-06-20','terdaftar':'5','color': Colors.red},
    {'title' : 'sidoarjo run','status':'Succes','hari':'2020-06-20','terdaftar':'5','color': Colors.red},
    {'title' : 'bali fest','status':'Succes','hari':'2020-06-20','terdaftar':'5','color': Colors.red},
    {'title' : 'tni run','status':'Succes','hari':'2020-06-20','terdaftar':'5','color': Colors.red},
    {'title' : 'palembang ','status':'Succes','hari':'2020-06-20','terdaftar':'5','color': Colors.red},
    {'title' : 'surockthon','status':'pending','hari':'2020-06-20','terdaftar':'5','color': Colors.red},
  ];
  @override
  Widget build(BuildContext context) {
 
    final restapi = Provider.of<Restapi>(context);
    final berita = Provider.of<Restapi>(context).getinfoagenda();
    return SingleChildScrollView(
        // margin: const EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
      ListView.builder(
          padding:  EdgeInsets.all(8.0),
          itemExtent: 106.0,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: eventstatus.length,
          itemBuilder: (context, index) {
            return CustomListItem(
              status: eventstatus[index]['status'],
              hari: eventstatus[index]['hari'],
              terdaftar: eventstatus[index]['terdaftar'],
              thumbnail: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage(berita[index].image)
                   )
               )
              ),
              title: eventstatus[index]['title'],
            );
            
         
          }),
         
    ]));
  }
}





/// This is the stateless widget that the main application instantiates.
// class MyStatelessWidget extends StatelessWidget {
//   MyStatelessWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(8.0),
//       itemExtent: 106.0,
//       children: <CustomListItem>[
//         CustomListItem(
//           // terdaftar: 'Flutter',
//           // hari: 999000,
//           thumbnail: Container(
//             decoration: const BoxDecoration(color: Colors.blue),
//           ),
//           title: 'The Flutter YouTube Channel',
//         ),
//         CustomListItem(
//           // terdaftar: 'Dash',
//           // hari: 884000,
//           thumbnail: Container(
//             decoration: const BoxDecoration(color: Colors.yellow),
//           ),
//           title: 'Announcing Flutter 1.0',
//         ),
//       ],
//     );
//   }
// }
