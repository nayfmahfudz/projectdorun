import 'package:flutter/material.dart';
import 'package:test2/EditProfile.dart';
import 'package:test2/Gantipassword.dart';
import 'package:test2/cart.dart';
import 'package:test2/model/apirequest.dart';
import 'package:test2/newsscafold.dart';
import 'Event.dart';
import 'home.dart';
import 'Login.dart';
import 'Detail.dart';
import 'form.dart';
import 'package:provider/provider.dart';
import 'provider/Restapi.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
   final _rute= <String, WidgetBuilder>{
    '/Login': (context,) => Login(),
    '/Beranda': (context) => Home(),
    '/Keranjang' : (context) => Cart(),
    '/Form' : (context) => FormBio(),
    '/editprofile' : (context) => EditProfile(),
    '/gantipassword' : (context) => Gantipass(),
    '/News' : (context) =>News(),
  };
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        // ChangeNotifierProvider()
        // ChangeNotifierProvider<Restapi>(create: : (contex) => ()),
        ChangeNotifierProvider(create: (_) => Restapi())
    ],child:
      MaterialApp(
        navigatorKey: navigatorKey,
      title: 'DO(run)',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Login(),
      routes: _rute,
    ));
  }
}




