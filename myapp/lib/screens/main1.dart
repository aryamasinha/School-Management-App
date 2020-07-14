import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
    ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    List<String> userids = [];
    List<String> password = [];
    List<String> type = [];
    
    @override
    void initState(){
      super.initState();
      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('accounts').once().then((DataSnapshot snap){
          for(var values in snap.value){
            userids.add(values["userid"]);
          }   
      });
       dbref.child('accounts').once().then((DataSnapshot snap){
          for(var values in snap.value){
            password.add(values["password"]);
          }   
      });
       dbref.child('accounts').once().then((DataSnapshot snap){
          for(var values in snap.value){
            type.add(values["type"]);
          }   
      });
  }


  @override
  Widget build(BuildContext context) {
    return LoginScreen(userids,password,type);
  }
}