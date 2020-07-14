import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/screens/Teacher/teacher_dashboard.dart';
import 'package:schoolapp/screens/Teacher/teacher_home_screen.dart';

class TeacherResultScreen extends StatefulWidget {

  @override
  _TeacherResultScreenState createState() => _TeacherResultScreenState();
}

class _TeacherResultScreenState extends State<TeacherResultScreen> {
  TextEditingController useridController = new TextEditingController();
  TextEditingController englishMarksController = new TextEditingController();
  TextEditingController hindiMarksController = new TextEditingController();
  TextEditingController bengaliMarksController = new TextEditingController();
  TextEditingController mathMarksController = new TextEditingController();
  TextEditingController gkMarksController = new TextEditingController();
  TextEditingController evsMarksController = new TextEditingController();
  TextEditingController drawingMarksController = new TextEditingController();

String warningText = 'Scroll Down';

bool allDataFilled(){
     if (useridController.text != '' &&
     drawingMarksController.text != '' 
     && englishMarksController.text != '' 
     && hindiMarksController.text != ''
     && gkMarksController.text != ''
     && drawingMarksController.text != ''
     && bengaliMarksController.text != ''
     && evsMarksController.text != ''){
       return true;
     }
     else{
        return false;
      } 
   }

void changeTextSuccess() {
 
    setState(() {
      warningText = "Submitted Successfully!";
    });
    
  }

  void _pushDataAndNavigate(BuildContext context){

    if(allDataFilled()){
      var data = {
     "english" : englishMarksController.text,
     "hindi" : hindiMarksController.text,
     "bengali" :bengaliMarksController.text,
     "math" : mathMarksController.text,
      "gk" : gkMarksController.text,
      "evs" : evsMarksController.text,
      "drawing" : drawingMarksController.text,
    }; 
    DatabaseReference dbref = new FirebaseDatabase().reference();
    String studentId = useridController.text;
    dbref.child('student-marks').child('$studentId').push().set(data);
    englishMarksController.clear();
    hindiMarksController.clear();
    bengaliMarksController.clear();
    mathMarksController.clear();
    gkMarksController.clear();
    evsMarksController.clear();
    drawingMarksController.clear();
    useridController.clear();
    changeTextSuccess();
    
    }
    
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
            top: 20,
          ),
          child:ListView(

                children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Center(
                            child: Text("Upload Result",
                            style: TextStyle(
                              fontFamily: "Cursive",
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
                         controller: useridController,
                          decoration: InputDecoration(
                            hintText: 'Enter Student ID',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                            ),
                          ),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Center(child: Text("Enter marks in each Subject[Enter hyphen(-) if Not Applicable]")),
                      ),
                      Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('English',
                     style: TextStyle(
                       fontSize:  15,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    controller: englishMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Hindi',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                    controller: hindiMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Bengali',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                    controller: bengaliMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Math',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                    controller: mathMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Drawing',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
               Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                    controller: drawingMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('G.K.',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                    controller: gkMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('E.V.S.',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                    controller: evsMarksController,
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ])
            ]
        ),
                   ),   
                  ],
             ),     ),
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

                SizedBox(height: 10),
                Center(
                  child: Text(
                          '${warningText}',
                          style: TextStyle(
                            color: Colors.red
                          ),
                          ),
                ),
              SizedBox(height: 10),
              
               SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                      onPressed: () {
                       Navigator.pop(context);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
                      textColor: Colors.purple,
                      child: const Text(
                        'Go to DashBoard',
                        style: TextStyle(fontSize: 20)
                      ),
                    ),
              ),
                ],
        ),
          ),
        )
      )
    );
  }
} 