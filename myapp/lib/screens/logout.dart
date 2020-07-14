import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'login_screen.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}



class _LogoutState extends State<Logout> {


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
    return MaterialApp(
      home: Scaffold(
        body:  Padding(
          padding: const EdgeInsets.only(
           top: 100,
           left: 20,
           right: 20,
          ),
          child: Column(
            children: <Widget>[
              Text(
                "Logged Out!",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontFamily: "Cursive",
                ),
                
              ),
                                SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                          onPressed: () {
                               Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(userids,password,type)
        ));
                          },
                          textColor: Colors.purple,
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 20)
                          ),
                        ),
                  ),
            ],
          ),
        ),  
      ),
    );
  }
} 