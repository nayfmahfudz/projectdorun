import 'package:flutter/material.dart';
import 'Jadwal_Lari.dart';
import 'NEvent.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'provider/Restapi.dart';

class HalamanKeempat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final restapi = Provider.of<Restapi>(context);
    return ListView( children: <Widget>[
         Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height*0.5,
          // padding: EdgeInsets.all(20),
          child: Stack(fit: StackFit.loose, 
          children: <Widget>[
            
            Container(
              height: MediaQuery.of(context).size.height * 0.425,
              color:Color.fromRGBO(237 , 155 , 12, 1),
            ),

            Positioned(
              top: 0,
              left: 1,
              right: 1,
              bottom: -230,
              child:Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Card(elevation: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Poin-poin",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "E-TICKET",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                "0",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "0",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )),
            //  Text("user"),
            Positioned(
              top: 1,
              left: 10.0,
              right: 10.0,
              child:
CircleAvatar(
  radius: 80,
  child: ClipOval(
      child: Image.network(restapi.getuser().image),
  )

  // backgroundImage: NetworkImage(restapi.getuser().image),),
),),
        //       Container(
        //         height: 100,
        //         width: 100,
        //          decoration: BoxDecoration(
        //           //  borderRadius: BorderRadius.circular(100.0),
        //            shape: BoxShape.circle,
        // image: new DecorationImage(
        //   fit: BoxFit.fill,
        
        //     image: NetworkImage(restapi.getuser().image)))
            //                 CircleAvatar( 

            //           radius: 300.0,
                      
            //           backgroundImage:
            //               NetworkImage(restapi.getuser().image),
            //           backgroundColor: Colors.transparent,
            //         ),
              
            // ),
            //    CachedNetworkImage(
            //     width: 30,
            //     height: 30,
            //     imageUrl: "http://eclub.bukujurnal.com/public/gambar/profile_yVIay_1.photo_483.jpg",
            //     imageBuilder: (context, imageProvider) => Container(
                  
            //       decoration: BoxDecoration(
                    
            //         image: DecorationImage(
            //             image: imageProvider,
            //             fit: BoxFit.cover,
            //             colorFilter:
            //                 ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
            //       ),
            //     ),
            //     placeholder: (context, url) => CircularProgressIndicator(),
            //     errorWidget: (context, url, error) => Icon(Icons.error),
            //   ),
            // ),
            Positioned(
              top: 1,
              left: 1,
              right: 1,
              bottom:-30,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  restapi.getuser().nama,
                  style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
          //  ],
        ),

      Jadwallari(),
    ]);
      //     Column(
      // children: <Widget>[
      //   Container(
      //     margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/ 4),
      //     padding: EdgeInsets.only(left: 10, right: 10),
      //     child: Card(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       elevation: 8,
      //       child: Padding(
      //         padding: const EdgeInsets.all(30.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: <Widget>[
      //             Align(
      //               alignment: Alignment.topLeft,
      //               child: Text(
      //                 "Login",
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontSize: 28,
      //                   fontWeight: FontWeight.w600,
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               height: 15,
      //             ),
      //             TextFormField(
      //               decoration: InputDecoration(
      //                   labelText: "Your Email", hasFloatingPlaceholder: true),
      //             ),
      //             SizedBox(
      //               height: 20,
      //             ),
      //             TextFormField(
      //               decoration: InputDecoration(
      //                   labelText: "Password", hasFloatingPlaceholder: true),
      //             ),
      //             SizedBox(
      //               height: 20,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                 MaterialButton(
      //                   onPressed: () {},
      //                   child: Text("Forgot Password ?"),
      //                 ),
      //                 Expanded(
      //                   child: Container(),
      //                 ),
      //                 FlatButton(
      //                   child: Text("Login"),
      //                   color: Color(0xFF4B9DFE),
      //                   textColor: Colors.white,
      //                   padding: EdgeInsets.only(
      //                       left: 38, right: 38, top: 15, bottom: 15),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(5)),
      //                   onPressed: () {},
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      //   Row(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       SizedBox(
      //         height: 40,
      //       ),
      //       Text(
      //         "Don't have an account ?",
      //         style: TextStyle(color: Colors.grey),
      //       ),
      //       FlatButton(
      //         onPressed: () {

      //         },
      //         textColor: Colors.black87,
      //         child: Text("Create Account"),
      //       ),
      //   ],
      // ),
      //           ],
      // )
      // ],
   
  }
}
