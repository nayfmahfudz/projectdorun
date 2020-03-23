import 'package:flutter/material.dart';
import 'package:test2/EditProfile.dart';
import 'package:test2/Gantipassword.dart';
import 'package:test2/cart.dart';
import 'package:test2/model/apirequest.dart';
import 'package:test2/newsscafold.dart';
import 'package:test2/splash_screen.dart';
import 'Event.dart';
import 'home.dart';
import 'Login.dart';
import 'Searchpage.dart';
import 'Detail.dart';
import 'form.dart';
import 'package:provider/provider.dart';
import 'provider/Restapi.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  final _rute = <String, WidgetBuilder>{
    '/Login': (context) => Login(),
    // '/Beranda': (context) => Home(),
    '/Keranjang': (context) => Cart(),
    '/Form': (context) => FormBio(),
    '/editprofile': (context) => EditProfile(),
    '/gantipassword': (context) => Gantipass(),
    '/News': (context) => News(),
    '/Search': (context) => SearchPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => Restapi())],
        child: MaterialApp(
          navigatorKey: navigatorKey,
          title: 'DO(run)',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          routes: _rute,
          home: Scaffold(
            body: Container(
              child: FutureBuilder(
                  future: Fetchuser(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null && snapshot.data.isNotEmpty) {
                        return Home(snapshot.data);
                      } else {
                        return Login();
                      }
                    } else {
                      return Splash();
                    }
                  }),
            ),
          ),
        ));
  }
}
