import 'package:flutter/material.dart';



class ReminderEvent extends StatefulWidget {
  @override
  _ReminderEventState createState() => _ReminderEventState();
}

class _ReminderEventState extends State<ReminderEvent> {
  @override
  Widget build(BuildContext context) {
     final List<Map<String, dynamic>> eventstatus = [
    {'title' : 'jackthon','status':'Succes','hari':'2020-06-20','tanggal':'1','color': Colors.red,'jam':'5.00 AM'},
     ];
 
    return SingleChildScrollView(child:Container(
      color: Colors.white,
        height: MediaQuery.of(context).size.height/3 ,
      width: MediaQuery.of(context).size.width*0.9 , 
        margin: const EdgeInsets.all(10.0),
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
              // status: eventstatus[index]['status'],
              hari: eventstatus[index]['hari'],
              // tanggal: eventstatus[index]['tanggal'],
              tanggal:eventstatus[index]['tanggal'],
              jam:eventstatus[index]['jam'],
              //  Container(
              //   decoration:  BoxDecoration(color: eventstatus[index]['color'],),
              // ),
              title: eventstatus[index]['title'],
            );
            // Card(
            //     // decoration: BoxDecoration(color: eventstatus[index]['color'],),
            //     // height: 200,
            //     // padding: EdgeInsets.all(5),
            //     child: ListTile(
            //       contentPadding: EdgeInsets.all(30),
            //       leading: Icon(Icons.event,size: 40,),
            //       title:  Text(
            //         eventstatus[index]['cat'],
            //         style: TextStyle(
            //           color: eventstatus[index]['cat'] != 'Javascript'
            //               ? Colors.white
            //               : Colors.black,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 30,
            //         ),
            //         textAlign: TextAlign.left,
            //       ),
            //       // onTap: ,
            //     ),

            // child: Container(
            //   alignment: Alignment.topLeft,
            //   child: Text(
            //     eventstatus[index]['cat'],
            //     style: TextStyle(
            //       color: eventstatus[index]['cat'] != 'Javascript'
            //           ? Colors.white
            //           : Colors.black,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 30,
            //     ),
            //     textAlign: TextAlign.left,
            //   ),

            // ),

            //       );
            //   }
            //   ),
            // Divider(),
            //  ])
         
          }),
          Divider(),
    ])));
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.tanggal,
    this.title,
    this.jam,
    // this.tanggal,
    this.hari
  });

  final String tanggal;
  final String title;
  final String jam;
  // final String tanggal;
  final String hari;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: _VideoDescription(
              jam: jam,
              title: title,
              // tanggal: tanggal,
              hari: hari,
            ),
          ),
          Expanded(
            flex: 2,
            child: Reminderday(
            tanggal:tanggal,
          )
          )
        ],
      ),
    );
  }
}

class   _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    // this.tanggal,
    this.hari,
    this.jam,
  }) : super(key: key);

  final String title;
  // final String tanggal;
  final String hari;
  final String jam;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child:
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),),
          // const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
         
          Expanded(flex: 1,
            child:
          Text(
            hari,
            style: const TextStyle(fontSize: 15.0),
          ),
          ),
          Expanded(flex: 1,
            child:
          Text(
            jam,
            style: const TextStyle(fontSize: 15.0),
          ),
          ),
        ],
      ),
    );
  }
}


class   Reminderday extends StatelessWidget {
  const Reminderday({
    Key key,
    this.tanggal,
  }) : super(key: key);

  final String tanggal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child:Container(
                    
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
            child:Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                children: <Widget>[
                  // Expanded(flex: 5,
                    // child:
                  Text(tanggal,textAlign: TextAlign.center,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  // ),
                  // Expanded(
                  //   flex: 1,
                  // child:
                  Text("Hari Lagi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  // ),
                ],
              ),
            )
          
          ),
          ),
        ],
      ),
    );
  }
}





      
      
