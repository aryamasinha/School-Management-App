import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/screens/Teacher/teacher_home_screen.dart';

class StudentHeightWeightDetail extends StatefulWidget {
  @override
  _StudentHeightWeightDetailState createState() => _StudentHeightWeightDetailState();
}

class _StudentHeightWeightDetailState extends State<StudentHeightWeightDetail> {
  TextEditingController idController = new TextEditingController();
  TextEditingController weightController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();
  String warningtText = '';


  bool _allDetailsVaild(){
    if(idController.text != '' && weightController.text != '' && heightController.text != ''){
      return true;
    }
    else{
      return false;
    }
  }

  void changeText() {

    setState(() {
     warningtText = "Submitted Successfully!";
    });
    
  }

  void _pushDataAndNavigate(BuildContext context){
    if(_allDetailsVaild()){
    var data = {
    "height" : heightController.text,
    "weight" :weightController.text
    };
    DatabaseReference dbref = new FirebaseDatabase().reference();
    dbref.child('weight-height-details').child('${idController.text}').remove();
    dbref.child('weight-height-details').child('${idController.text}').push().set(data);
    idController.clear();
    heightController.clear();
    weightController.clear();
    changeText();
  }
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
    onWillPop: () async => false,
          child: MaterialApp(
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
                            top : 20,
                            bottom: 20,
                          ),
                          child: Text("Enter the following details of Students",
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
                          controller: idController,
                          decoration: InputDecoration(
                            hintText: 'Enter StudentID',
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
                         controller: weightController,
                          decoration: InputDecoration(
                            hintText: 'Enter student height',
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
                         controller: heightController,
                          decoration: InputDecoration(
                            hintText: 'Enter student weight',
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
            )
          )
        )
        )
      ),
    );
  }
}



 