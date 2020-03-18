import 'package:flutter/material.dart';
import 'package:test2/model/User.dart';
import 'package:test2/model/agenda.dart';
import 'package:test2/model/berita.dart';
import 'package:test2/provider/Restapi.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:test2/Appstate.dart';
import 'Iklan.dart';
import 'package:test2/fom.dart';
import 'package:provider/provider.dart';

Future getberita(BuildContext context) async {
  final url1 =
      "https://run.doran.id/public/api/berita?X-API-KEY=doran_data&id_group=5";
  final response = await http.get(url1);
  List<Berita> list = (json.decode(response.body) as List)
      .map((res) => new Berita.fromJson(res))
      .toList();

  Provider.of<Restapi>(context, listen: false).setberitauser(list);
}

Future getiklan(BuildContext context) async {
  final url1 =
      "http://eclub.bukujurnal.com/public/api/iklan?X-API-KEY=doran_data";
  final response = await http.get(url1);

  List<Iklan> list = (json.decode(response.body) as List)
      .map((res) => new Iklan.fromJson(res))
      .toList();

  Provider.of<Restapi>(context, listen: false).setiklan(list);
}

Future getkomentar(BuildContext context, int i) async {
  final url1 =
      "https://run.doran.id/public/api/komentar/getkomentar?X-API-KEY=doran_data&id_agenda=${i}";
  final response = await http.get(url1);
  List list = (json.decode(response.body) as List)
      // .map((res) => new Berita.fromJson(res))
      .toList();

  Provider.of<Restapi>(context, listen: false).setkomentar(list);
}

Future getagenda(BuildContext context) async {
  final url1 =
      "https://run.doran.id/public/api/agenda?X-API-KEY=doran_data&group=5";
  final response = await http.get(url1);

  List<ModelAgenda> list = (json.decode(response.body) as List)
      .map((res) => new ModelAgenda.fromJson(res))
      .toList();

  Provider.of<Restapi>(context, listen: false).setagenda(list);
}

Future postSignUp(BuildContext context, String nama, String email, String pass,
    String alamat, String nomor) async {
  final url =
      "https://run.doran.id/public/api/versi3/register?X-API-KEY=doran_data";
  final response = await http.post(url, body: {
    "nama": "$nama",
    "email": "$email",
    "password": "$pass",
    "alamat": "$alamat",
    "telepon": "$nomor"
  });
  final res = json.decode(response.body);

  if (res["result"] == true) {
    Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
   hasiltombol(context, 0);
   berhasil(context);
  } else {
    alarm(context);
    print("login gagal");
  }
}


// Future getuser(BuildContext context, String email, String pass) async {
//   final url =
//       "https://run.doran.id/public/api/versi3/login?X-API-KEY=doran_data";
//   final response = await http.post(url, body: {
//     "username": email,
//     "password": pass,
//   });
//   final res = json.decode(response.body);

//   if (res["result"] == true) {
//     Provider.of<Restapi>(context, listen: false).setuser(User.fromJson(res["data"]["profile"]));
//     Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
//     print(Provider.of<Restapi>(context, listen: false).getuser());
//     Navigator.pushReplacementNamed(context, '/Beranda');
//   } else {
//     alarm(context);
//     // print("login gagal");
//   }
// }
Future getuser(BuildContext context, String email, String pass) async {
  final url =
      "https://run.doran.id/public/api/versi3/login?X-API-KEY=doran_data";
  final response = await http.post(url, body: {
    "username": email,
    "password": pass,
  });
  final res = json.decode(response.body);

  if (res["result"] == true) {
    Provider.of<Restapi>(context, listen: false).setuser(User.fromJson(res["data"]["profile"]));
    Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
    Navigator.pushReplacementNamed(context, '/Beranda');
  } else {
    alarm(context);
    // print("login gagal");
  }
}

Future edituser(BuildContext context, String email, String pass) async {
  final url =
      "https://run.doran.id/public/api/versi3/login?X-API-KEY=doran_data";
  final response = await http.post(url, body: {
    "username": email,
    "password": pass,
  });
  final res = json.decode(response.body);

  if (res["result"] == true) {
    Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
    hasiltombol(context, 3);
    berhasil(context);
  } else {
    alarm(context);
  }
}

Future gantipass(BuildContext context, int id, String pass) async {
  final url =
      "https://run.doran.id/public/api/password/changepassword?X-API-KEY=doran_data";
  final response = await http.post(url,
      body: json.encode({
        "id": id,
        "newPassword": pass,
      }));
  final res = json.decode(response.body);

  if (res["result"] == true) {
    Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
    hasiltombol(context, 1);
   berhasil(context);
  } else {
    alarm(context);
  }
}

Future joinagenda(BuildContext context) async {
  final int idagenda = Provider.of<Restapi>(context, listen: false).getid();
  final int id = Provider.of<Restapi>(context, listen: false).getuser().id;
  final url =
      "https://run.doran.id/public/api/agenda/joinagenda?X-API-KEY=doran_data";
  final response = await http.post(Uri.encodeFull(url), body: {
    "id_user": "$id",
    "id_agenda": "$idagenda",
  });
  final res = json.decode(response.body);

  if (res["result"] == true) {
    Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
    hasiltombol(context, 2);
   berhasil(context);
  } else {
    gberhasil(context);
    print(res);
  }
}
