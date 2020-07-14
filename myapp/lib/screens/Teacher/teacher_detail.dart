import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/screens/Teacher/teacher_dashboard.dart';
import 'package:schoolapp/screens/Teacher/teacher_home_screen.dart';

class TeacherDetail extends StatefulWidget {

  String id;
  TeacherDetail(this.id);

  

  @override
  _TeacherDetailState createState() => _TeacherDetailState();
}

class _TeacherDetailState extends State<TeacherDetail> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController photourlController = new TextEditingController();
  String warningtText = '';

  bool _allDetailsVaild(){
    if(nameController.text != '' && photourlController.text != ''){
      return true;
    }
    else{
      return false;
    }
  }

  void changeText() {

    setState(() {
     warningtText = "Please enter all the details!";
    });
    
  }

  void _pushDataAndNavigate(BuildContext context){
    if(!_allDetailsVaild()){
      changeText();
      return;
    }
    var data = {
    "name" : nameController.text,
    "photo-url" :photourlController.text
    };
    DatabaseReference dbref = new FirebaseDatabase().reference();
    dbref.child('teacher-detail').child('${widget.id}').push().set(data);
    Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherHomeScreen()
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Color.fromRGBO(220, 155, 253, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child:SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    bottom: 20,
                  ),
                  child: Image.asset(
                        'assets/images/teacher.png',
                        height: 200,
                        width: 200
                        ),
                ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top : 20,
                          bottom: 20,
                        ),
                        child: Text("Enter the following details",
                        style: TextStyle(
                          fontFamily: "Cursive",
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                   Card(
              child: Column(
                children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(
                       left: 10,
                       right: 10,
                     ),
                     child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter name',
                          hintStyle: TextStyle(
                            fontFamily: "Raleway",
                            color: Colors.purple,
                          ),
                        ),
                     ),
                   ),     
                    SizedBox(
                     height: 10,
                     ),
                       Padding(
                     padding: const EdgeInsets.only(
                       left: 10,
                       right: 10,
                     ),
                     child: TextField(
                       controller: photourlController,
                        decoration: InputDecoration(
                          hintText: 'Enter your photo URL(drive/dropbox link)',
                          hintStyle: TextStyle(
                            fontFamily: "Raleway",
                            color: Colors.purple,
                          ),
                        ),
                     ),
                   ),
                SizedBox(
                     height: 10,
                     ),
                ],
              ),
            ),
             SizedBox(height: 10),
                Text('$warningtText',
                        style: TextStyle(
                          color: Colors.red
                        ),
                        ),
              SizedBox(height: 10),
            SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                    onPressed: () {
                      _pushDataAndNavigate(context);
                    },
                    textColor: Colors.purple,
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 20)
                    ),
                  ),
            ),
              ],
              
            ),
          )
        )
      )
      )
    );
  }
}