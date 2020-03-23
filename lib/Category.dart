import 'package:flutter/material.dart';

import 'fom.dart';

class Category extends StatelessWidget {
  
  @override
  
 
 
  Widget build(BuildContext context) {
     final List<Map<String, dynamic>> _category = [
    {'cat': 'Trail Run', 'image': "gambar/trailrun.jpg",'ontap' : null},
    {'cat': 'Kid', 'image': "gambar/Funrun.jpg",'ontap' : null},
    // {'cat': 'HALF', 'image': Colors.amber},
    {'cat': 'Marathon', 'image': "gambar/marathon.jpg" , 'ontap' : settingModalBottomSheet},
    {'cat': 'Walk', 'image': "gambar/walk.jpg",'ontap' : null },
    {'cat': 'Ride', 'image': "gambar/ridebike.jpg",'ontap' : null},
    {'cat': 'Tower Run', 'image': "gambar/towerrun.jpg" ,'ontap' : null},
   
  ];
    return Container(
        // margin: const EdgeInsets.all(10.0),
        child: GridView.builder(
          // scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: _category.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              
              childAspectRatio: 1),
          itemBuilder: (context, index) {
            return  
            GestureDetector(
              onTap: (){
                _category[index]['ontap'](context); 
                },
                          child: Card(child:Container(
                 child: ListView(
                  children: <Widget>[
                    Text(_category[index]['cat'],style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                  ],
                ),
              
                decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(_category[index]['image']),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,),
          
               
              // Container(
                
              //     // color: Colors.white,
              //     height: 300,
              //     child: Column(
              //       children: <Widget>[
                  //     Container(
                  //       alignment: Alignment.topLeft,
                  //       child: Text(
                  //         _category[index]['cat'],
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.orange,
                  //           fontSize: 15,
                  //         ),
                  //         textAlign: TextAlign.left,
                  //       ),
                  //     ),
                  //     // Container(
                  //     //   alignment: Alignment.bottomRight,
                  //     //   child:Image.asset("gambar/run.png",fit: BoxFit.contain,height: 50,width: 50,)
                  //     // )
                  //     ClipRRect(borderRadius: BorderRadius.circular(100),
                        
                  //                           child: Container(
                  //                             padding: EdgeInsets.all(15),
                  //         width: 40,
                  //         height: 40,
                  //       decoration: BoxDecoration(

                  //   border: Border.all(color: Colors.orange,),
                  //   shape: BoxShape.circle,
                    
                  //       // 
                  //       // image: AssetImage("gambar/run.png")
                  //     ),
                  //     child: Image.asset("gambar/run.png"), 
                  //     )
                  // ),
                    // ],
                  // ),

                // );
        ))),
            );}));
    
  }
}


  

  
