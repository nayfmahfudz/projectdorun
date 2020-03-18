import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  
  @override
  
  final List<Map<String, dynamic>> _category = [
    {'cat': 'Trail Run', 'color': Colors.pink},
    {'cat': 'Fun Run', 'color': Colors.blue},
    {'cat': 'HALF', 'color': Colors.amber},
    {'cat': 'FULL', 'color': Colors.yellow},
    {'cat': 'Walk', 'color': Colors.red},
    {'cat': 'Ride', 'color': Colors.red},
    {'cat': 'Tower Run', 'color': Colors.red},
    {'cat': 'Lebih Banyak', 'color': Colors.red},
   
  ];
 
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.all(10.0),
        child: GridView.builder(
          // scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: _category.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              
              childAspectRatio: 1),
          itemBuilder: (context, index) {
            return  Container(
              
                // color: Colors.white,
                height: 300,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        _category[index]['cat'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.bottomRight,
                    //   child:Image.asset("gambar/run.png",fit: BoxFit.contain,height: 50,width: 50,)
                    // )
                    ClipRRect(borderRadius: BorderRadius.circular(100),
                      
                                          child: Container(
                                            padding: EdgeInsets.all(15),
                        width: 40,
                        height: 40,
                      decoration: BoxDecoration(

                  border: Border.all(color: Colors.orange,),
                  shape: BoxShape.circle,
                  
                      // 
                      // image: AssetImage("gambar/run.png")
                    ),
                    child: Image.asset("gambar/run.png"), 
                    )
                ),
                  ],
                ),

              );
          }));
    
  }
}


  

  
