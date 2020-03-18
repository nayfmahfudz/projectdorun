import 'package:flutter/material.dart';
import 'package:test2/model/Iklan.dart';
import 'package:test2/model/User.dart';
import 'package:test2/model/berita.dart';


class Restapi with ChangeNotifier {
  User _user;
  getuser() => _user;

  void setuser(User val) {
    _user = val;
    notifyListeners();
  }

  Loginapi _loginapi;
  getloginapi() => _loginapi;

  void setloginapi(Loginapi val) {
    _loginapi = val;
    notifyListeners();
  }

  List _komentars = [];
  List getkomentar() => _komentars;
  void setkomentar(List val) {
    _komentars = val;
    notifyListeners();
  }
bool _booll = true;
  bool getboolean() => _booll;
  void setboolean(bool val) {
    _booll = val;
    notifyListeners();
  }


  List<Berita> _beritas = [];
  List<Berita> getberitauser() => _beritas;
  void setberitauser(List<Berita> val) {
    _beritas = val;
    notifyListeners();
  }

  List _iklan;
  getinfoiklan() => _iklan;
  void setiklan(List val) {
    _iklan = val;
    notifyListeners();
  }

  List _agenda;
  getinfoagenda() => _agenda;
  void setagenda(List val) {
    _agenda = val;
    notifyListeners();
  }

  int _id;
  getid() => _id;
  void setid(int val) {
    _id = val;
    notifyListeners();
  }

  List _cart;
  getcart() => _cart;

  void setcart(List val) {
    _cart = val;
    notifyListeners();
  }

  var _msg;
  getmsg() => _msg;

  void setmsg(var val) {
    _msg = val;
    notifyListeners();
  }
   var _msgggl;
  getmsgggl() => _msgggl;

  void setmsgggl(var val) {
    _msgggl = val;
    notifyListeners();
  }
}
