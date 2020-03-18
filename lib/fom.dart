import 'package:flutter/material.dart';
import 'model/apirequest.dart';
import 'provider/Restapi.dart';
import 'package:provider/provider.dart';
import 'Login.dart';

final login = LoginState();
final formKey = GlobalKey<FormState>();
final formKey1 = GlobalKey<FormState>();
final formKey2 = GlobalKey<FormState>();

void _validateinput(BuildContext context) {
  if (formKey.currentState.validate()) {
    formKey.currentState.save();
  } else {
    StatefulBuilder(builder: (context, setState) {
      setState(() {
        autoValidate = true;
      });
    });
  }
}
void hasiltombol(BuildContext context,int hitung){
  StatefulBuilder(builder: (context, setState) {
   if(hitung == 0)
      {
        setState(() {
          hasil = 'Berhasil Mendaftar';
          Provider.of<Restapi>(context).setmsg(hasil);
          
        });
      }
      if(hitung == 1)
      {
        setState(() {
          hasil = 'Berhasil Ubah Password';
          Provider.of<Restapi>(context).setmsg(hasil);
        });
      }
       if(hitung == 2)
      {
        setState(() {
          hasil = 'Berhasil Join';
          Provider.of<Restapi>(context).setmsg(hasil);
        });
      }
       if(hitung == 3)
      {
        setState(() {
          hasil = 'Berhasil Update Profile';
          Provider.of<Restapi>(context).setmsg(hasil);
        });
      }
 });}
      


String validemail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value)) return 'Enter Valid Email';
}

String validenama(String value) {
  if (value.length < 3)
    return 'Nama Harus diisi minimal 3 kata';
  else
    return null;
}

String validpass(String value) {
  if (value == null)
    return 'Password harus diisi';
  else
    return null;
}

String validalamat(String value) {
  if (value.length < 10)
    return 'Mohon alamat diisi dengan lengkap';
  else
    return null;
}

String validnomor(String value) {
  if (value.length < 8)
    return 'Mohon alamat diisi dengan lengkap';
  else
    return null;
}

bool autoValidate = false;
String _nama;
String _email;
String _pass;
String _alamat;
String _nomor;
String _passbr;
String _passver;
// var pass =int.parse(_passver);

var teks = Text(
  "Pendaftaran",
  textAlign: TextAlign.center,
  style: TextStyle(color: Color.fromRGBO(237, 155, 12, 1), fontSize: 40),
);

var nama = StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)=>Container(child:TextFormField(
  controller: namainputcontroller,
  validator: validenama,
  onSaved: (String value) {
    _nama = value;
  },
  autofocus: false,

  decoration: InputDecoration(
    suffixIcon: IconButton(icon: Icon(Icons.account_box)),
    hintText: 'Nama Lengkap',
    contentPadding: EdgeInsets.all(20),
    border: Provider.of<Restapi>(context).getboolean() ? OutlineInputBorder() : null,
  ),
)));

var passwordbaru = TextFormField(
  // controller: passbrinputcontroller,
  validator: validpass,
  onSaved: (String value) {
    _passbr = value;
  },
  autofocus: false,
  obscureText: true,
  decoration: InputDecoration(
    suffixIcon: IconButton(icon: Icon(Icons.keyboard_hide)),
    hintText: ' Password',
    contentPadding: EdgeInsets.all(20),
    border: OutlineInputBorder(),
  ),
);
var passwordver = TextFormField(
  // controller: passbrinputcontroller,
  validator: validpass,
  onSaved: (String value) {
    _passver = value;
  },
  autofocus: false,
  obscureText: true,
  decoration: InputDecoration(
    suffixIcon: IconButton(icon: Icon(Icons.keyboard_hide)),
    hintText: ' Password',
    contentPadding: EdgeInsets.all(20),
    border: OutlineInputBorder(),
  ),
);
var alamat = StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)=>Container(child:TextFormField(
  controller: alamatinputcontroller,
  validator: validalamat,
  onSaved: (String value) {
    _alamat = value;
  },

  autofocus: false,
  decoration: InputDecoration(
    suffixIcon: IconButton(
      icon: Icon(Icons.home),
    ),
    hintText: 'Alamat ',
    contentPadding: EdgeInsets.all(20),
    border: Provider.of<Restapi>(context).getboolean()? OutlineInputBorder() : null,
  ),
)));
var nomor = StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)=>Container(child:TextFormField(
  keyboardType: TextInputType.phone,
  controller: nomorinputcontroller,
  autofocus: false,
  decoration: InputDecoration(
    hintText: ' Nomor Telepon',
    contentPadding: EdgeInsets.all(20),
    border: Provider.of<Restapi>(context).getboolean() ? OutlineInputBorder() : null,
    suffixIcon: IconButton(icon: Icon(Icons.phone_android)),
  ),
)));
void gberhasil(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Center(
          child: AlertDialog(
            content: Text(
              "Gagal Join",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[Center(child: okButton)],
          ),
        ));
void jberhasil(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Center(
          child: AlertDialog(
            content: Text(
              "Berhasil Join",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[
              Center(child: okButton)],
          ),
        ));
        void uberhasil(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Center(
          child: AlertDialog(
            content: Text(
              "Berhasil Join",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[
              Center(child: okButton)],
          ),
        ));
int switchControl;  
      
final hasiltombo =

 StatefulBuilder(builder: (context, setState)=> Center(
          child: AlertDialog(
            content: Text(
              "Login Gagal",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[okButton],
          ),
        ));
    String hasil;
  
void berhasil(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Center(
          child: AlertDialog(
            content: 
            Text(
              Provider.of<Restapi>(context).getmsg(),
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[okButton],
          ),
        ));
void keluar(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Center(
          child: AlertDialog(
            content: Text(
              "Mau Keluar?",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[
              Row(
                children: <Widget>[
                  keluaryaButton,
                  SizedBox(
                    width: 20,
                  ),
                  keluartidakButton
                ],
              )
            ],
          ),
        ));

    
    
         
alarm(BuildContext context) => showDialog(
    context: context,
    builder: (context) => Center(
          child: AlertDialog(
            content: Text(
              Provider.of<Restapi>(context).getmsgggl(),
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            elevation: 3,
//                actionsPadding: EdgeInsets.only(right: 28),

            actions: <Widget>[okButton],
          ),
        ));
var keluaryaButton = Builder(
  builder: (BuildContext context) => Material(
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    child: MaterialButton(
      minWidth: 100.0,
      height: 42.0,
      onPressed: () {
        Navigator.pushNamed(context, "/Login");
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text(
        'Ya',
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
);
var keluartidakButton = Builder(
  builder: (BuildContext context) => Material(
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    child: MaterialButton(
      minWidth: 100.0,
      height: 42.0,
      onPressed: () {
        Navigator.pop(context);
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text(
        'Tidak',
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
);
var okButton = Builder(
  builder: (BuildContext context) => Material(
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {
        Navigator.pop(context);
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text(
        'OK',
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
);
var gantiButton = Builder(
  builder: (BuildContext context) => Material(
    borderRadius: BorderRadius.circular(60.0),
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    // elevation: 5.0,
    child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          int id = 
              Provider.of<Restapi>(context, listen: false).getuser().id;
          if (formKey2.currentState.validate()) {
            formKey2.currentState.save();
            gantipass(context, id, _pass);
            _validateinput(context);
            
          }
        }),
  ),
);
var joinButton = Builder(
  builder: (BuildContext context) => Material(
    borderRadius: BorderRadius.circular(60.0),
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    // elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {
        joinagenda(context);
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text('Sign In', style: TextStyle(color: Colors.white)),
    ),
  ),
);

var signButton = Builder(
  builder: (BuildContext context) => Material(
    borderRadius: BorderRadius.circular(60.0),
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    // elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {
        _validateinput(context);
        postSignUp(context, _nama, _email, _pass, _alamat, _nomor);
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text('Sign Up', style: TextStyle(color: Colors.white)),
    ),
  ),
);

final email = StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)=>Container(child:TextFormField(
  validator: validenama,
  onSaved: (String value) {
    _email = value;
  },
  controller: emailinputcontroller,
  keyboardType: TextInputType.emailAddress,
  autofocus: false,
  // initialValue: "Masukan Username atau Email",
  decoration: InputDecoration(
    suffixIcon: IconButton(icon: Icon(Icons.keyboard)),
    hintText: 'Email',
    contentPadding: EdgeInsets.all(20),
    border: Provider.of<Restapi>(context).getboolean() ? OutlineInputBorder() : null,
  ),
)));
// final

 bool passwordVisible = true;

final password =  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)=>Container(
                child: TextFormField(
  validator: validpass,
  autofocus: false,
  onSaved: (value) {
    _pass = value;
  }, 
  controller: passinputcontroller,
  obscureText: passwordVisible?true:false,
  decoration: InputDecoration(
      hintText: ' Password',
      contentPadding: EdgeInsets.all(20),
      border: OutlineInputBorder(),
      suffixIcon: IconButton(
          icon: Icon(
            passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed:(){
                setState(() {
                  passwordVisible = !passwordVisible;
                });
            }
          ),
)),
              ));

final loginButton = Builder(
  builder: (BuildContext context) => Material(
    borderRadius: BorderRadius.circular(60.0),
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    // elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          getuser(context, _email, _pass);
        }
        _validateinput(context);
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text('Log In', style: TextStyle(color: Colors.white)),
    ),
  ),
);

final belum = Builder(
    builder: (BuildContext context) => FlatButton(
          child: Text(
            'Belum punya akun?',
            style: TextStyle(color: Colors.black54),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Form');
          },
        ));

final editButton = Builder(
  builder: (BuildContext context) => Material(
    shadowColor: Color.fromRGBO(237, 155, 12, 1),
    // elevation: 5.0,
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {
        // if (formKey.currentState.validate()) {

        formKey.currentState.save();
        // Navigator.of(context).pop();
        // }
        
        edituser(context, _email, _pass);
      },
      color: Color.fromRGBO(237, 155, 12, 1),
      child: Text('Edit', style: TextStyle(color: Colors.white)),
    ),
  ),
);

var emailinputcontroller= TextEditingController();
var passinputcontroller = new TextEditingController();
// var emailcontroller=new TextEditingController();
// var passcontroller=new TextEditingController();
var namainputcontroller=new TextEditingController();
var nomorinputcontroller=new TextEditingController();
var alamatinputcontroller=new TextEditingController();
// var passbrinputcontroller=new TextEditingController();
// var passvrinputcontroller=new TextEditingController();
