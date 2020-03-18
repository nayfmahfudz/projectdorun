// import 'package:flutter/material.dart';

// BuildContext context;
//  void _validateinput() {
//   if (_formKey.currentState.validate()) {

//     _formKey.currentState.save();
//     Navigator.pushNamed(context,'/Login');
//   } else {

//     setState(() {
//       _autoValidate = true;
//     });
//   }
// }
//   bool _autoValidate = false;
//   String _nama;
//   String _email;
//   String _pass;
//   String _alamat;
//   String _nomor;
//   var _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
    
  
//     String validemail(String value) {
    
//       Pattern pattern =
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//     RegExp regex = new RegExp(pattern);
//     if (!regex.hasMatch(value))
//       return 'Enter Valid Email';
//   }
//   String validenama(String value) {
//     if (value.length < 3)
//       return 'Nama Harus diisi minimal 3 kata';
//     else
//       return null;
//   }
//   String validpass(String value) {
//     if (value == null)
//       return 'Password harus diisi';
//     else
//       return null;
//   }
//   String validalamat(String value) {
//     if (value.length > 3)
//       return 'Mohon alamat diisi dengan lengkap';
//     else
//       return null;
//   }
//   String validnomor(String value) {
//     if (value.length > 9)
//       return 'Mohon alamat diisi dengan lengkap';
//     else
//       return null;
//   }
  
    
//     Kelamin kelamin;
//     var teks =Text(
//       "Formulir",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 40),
//     );
//     var email = TextFormField(
//       validator:  validemail,
//       onSaved: (String value){
//         _email = value;
//       },
//       controller: emailinputcontroller,
//       keyboardType: TextInputType.emailAddress,
//       autofocus: false,
//       // initialValue: "Masukan Username atau Email",
//       decoration: InputDecoration(
//         icon: Icon(Icons.email),
//         hintText: 'Email',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//      var nama = TextFormField(
//       controller: emailinputcontroller,
//        validator:  validenama,
//       onSaved: (String value){
//         _nama = value;
//       },
//       autofocus: false,
      
//       decoration: InputDecoration(
//         icon: Icon(Icons.account_box),
//         hintText: 'Nama Lengkap',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     var password = TextFormField(
//       controller: passinputcontroller,
//        validator:  validpass,
//        onSaved: (String value){
//         _pass = value;
//       },
//       autofocus: false,
//       obscureText: true,
//       decoration: InputDecoration(
//         icon: Icon(Icons.keyboard_hide),
//         hintText: ' Password',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );
//     var alamat = TextFormField(
//       // controller: emailinputcontroller,
//        validator:  validalamat,
//       onSaved: (String value){
//         _alamat = value;
//       },
      
//       autofocus: false,
//       decoration: InputDecoration(
//         icon: Icon(Icons.home),
//         hintText: 'Alamat ',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     var nomor = TextFormField(
//        validator:  validnomor,
//       onSaved: (String value){
//         _nomor = value;
//       },

//       keyboardType: TextInputType.phone,
//       // controller: passinputcontroller,
//       autofocus: false,
//       decoration: InputDecoration(
//         hintText: ' Nomor Telepon',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//         icon: Icon(Icons.phone_android)
//       ),
//     );

//     var loginButton = Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),

//       child: Material(
//         borderRadius: BorderRadius.circular(60.0),
//         shadowColor: Colors.lightBlueAccent,
//         // elevation: 5.0,
//         child: MaterialButton(

//           minWidth: 200.0,
//           height: 42.0,
//           onPressed: 
//           () {
//   //           if (_formKey.currentState.validate()) {

//   //   _formKey.currentState.save();
//   //   Navigator.of(context).pop();
//   // } 
//             _validateinput();
//           //   Navigator.pushNamed(context,'/Login');
//           },
//           color: Colors.lightBlueAccent,
//           child: Text('Sign In', style: TextStyle(color: Colors.white)),
//         ),
//       ),
//     );
//     String dropdownValue ="Pria";
//     // var drop = DropdownButton<String>(
//     //   value: dropdownValue,


//     //   // icon: Icon(Icons.arrow_downward),
//     //   iconSize: 24,
//     //   elevation: 16,
//     //   style: TextStyle(color: Colors.deepPurple),
//     //   // underline: Container(
//     //   //   height: 2,
//     //   //   color: Colors.deepPurpleAccent,
//     //   // ),
//     //   onChanged: (String newValue) {
//     //     setState(() {
//     //       dropdownValue = newValue;
//     //     });
//     //   },
//     //   items: <String>[pria,wanita]
//     //       .map<DropdownMenuItem<String>>((String value) {
//     //     return DropdownMenuItem<String>(
//     //       value: value,
//     //       child: Text(value),
//     //     );
//     //   }).toList(),
//     // );
// //   }
// // }
// String _value;
// final drop = DropdownButton<String>(
  
	
//           items: [
	
//             DropdownMenuItem<String>(
	
//               child: Row(
	
//                   children: <Widget>[
	
//                     Icon(Icons.filter_1),
	
//                     Text('Wanita'),
	
//                   ],
	
//               ),
	
//               value: 'one',
	
//             ),
	
//             DropdownMenuItem<String>(
	
//               child: Row(
	
//                 children: <Widget>[
	
//                   Icon(Icons.filter_2),
	
//                   Text('Pria'),
	
//                 ],
	
//               ),
	
//               value: 'two',
	
//             ),
	
            
	
//           ],
	
//           isExpanded: false,
	
//           onChanged: (String value) {
	
//             setState(() {
	
//               _value = value;
	
//             });
	
//           },
	
//           hint: Text('Pilih jenis kelamin'),
	
//           value: _value,
	
//           // underline: Container(
	
//           //   decoration: const BoxDecoration(
	
//           //       border: Border(bottom: BorderSide(color: Colors.grey))
	
//           //   ),
	
//           // ),
	
//           style: TextStyle(
	
//             fontSize: 30,
	
//             color: Colors.black,
	
//           ),
	
//           // iconEnabledColor: Colors.pink,
	
//   //        iconDisabledColor: Colors.grey,
	
//           iconSize: 40,
	
        
	
//       );

//     int id=0;
//     // String _value;
//     final List<Kelamin> _kelamin=[
//       Kelamin(index: 0,text: 'Pria' ),
//       Kelamin(index: 1,text: 'Wanita' )

//     ];

    
//   //  List _fruits = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];

//   // List<DropdownMenuItem<String>> _dropDownMenuItems;
//   // String _selectedFruit;

//   // @override
//   // void initState() {
//   //   _dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
//   //   _selectedFruit = _dropDownMenuItems[0].value;
//   //   super.initState();
//   // }

//   //  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
//   //   List<DropdownMenuItem<String>> items = List();
//   //   for (String fruit in fruits) {
//   //     items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
//   //   }
//   //   return items;
//   // }

//   // void changedDropDownItem(String selectedFruit) {
//   //   setState(() {
//   //     _selectedFruit = selectedFruit;
//   //   });
//   // }
//   //  String _selectedLocation;
//   // final drop=DropdownButton<String>(
//   // value: _selectedLocation,
//   // items:_fruits
//   // //  <String>['Pria', 'Wanita'].map((String value) {
//   // //   return  DropdownMenuItem<String>(
//   // //     value: value,
//   // //     child: new Text(value),
//   //   );
//   // // })
//   // // .toList(),
//   // onChanged: (value) {
//   //   value = _selectedLocation;
//   //   // _selectedLocation = val;
    
//   // };
// // );
//   //  final gender =Column(
     
//   //             children: 
//   //               _kelamin.map((kelamin) =>DropdownButton(
//   //                 items: _dropDownMenuItems, 
//   //                 value: _selectedFruit,
//   //                 onChanged: changedDropDownItem)
//   // //  RadioListTile(
//   // //                 title: Text("${kelamin.text}"),
//   // //                 groupValue: id,
//   // //                 // selected: isselected == kelamin.index,
//   // //                 value: kelamin.index,
//   // //                 // selected: id == kelamin.index,
//   // //                 onChanged: (val) {
//   // //                   setState(() {
//   // //                    id=val;
//   // //                     ;
//   // //                   //  return gender;
//   // //                     // radioItem = data.name ;
//   // //                     // if(val==)
//   // //                     // setisselected(val);
//   // //       },
//   // //       // selected: selectedUser == user,
//   // //                     // val = kelamin.index;
//   // //                     // return id;
//   // //                   );
//   // //                 },
//   //               ).toList(),           
//   //  );