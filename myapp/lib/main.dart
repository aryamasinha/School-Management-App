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
    
    @override
    void initState(){
      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('accounts').once().then((DataSnapshot snap){
          for(var values in snap.value){
            userids.add(values["userid"]);
          }    
      });
      print(userids.length);
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}