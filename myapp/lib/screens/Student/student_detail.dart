import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/screens/Student/student_home_screen.dart';

class StudentDetail extends StatefulWidget {
   
  String id;

  StudentDetail(this.id);

  @override
  _StudentDetailState createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController fathernameController = new TextEditingController();
  TextEditingController mothernameController = new TextEditingController();
  TextEditingController photourlController = new TextEditingController();
  String selectedClass = "Play-Group";
  String warningText = '';

  bool _allDetailsVaild(){
    if(nameController.text != '' &&  fathernameController.text != '' && mothernameController.text != ''){
      return true;
    }
    else{
      return false;
    }
  }

  void changeText() {

    setState(() {
        warningText = "Please enter all the details!";
    });
    
  }



  void _pushDataAndNavigate(BuildContext context){
    if(!_allDetailsVaild()){
      changeText();
      return;
    }
    else{
       var data = {
    "class" : selectedClass,
    "fathers-name" : fathernameController.text,
    "mothers-name" : mothernameController.text,
    "name" : nameController.text,
    "photo-url" :photourlController.text
    };

    var data1 = {
      "class" : selectedClass,
    };
    DatabaseReference dbref = new FirebaseDatabase().reference();
    dbref.child('student-detail').child('${widget.id}').remove();
    dbref.child('student-detail').child('${widget.id}').push().set(data);
    dbref.child('student-class').child('${widget.id}').remove();
    dbref.child('student-class').child('${widget.id}').push().set(data1);
    Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentHomeScreen(widget.id),
        ));
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
                      top: 20,
                      bottom: 20,
                    ),
                    child: Image.asset(
                          'assets/images/student.png',
                          height: 100,
                          width: 100),
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
                         controller: fathernameController,
                          decoration: InputDecoration(
                            hintText: 'Enter Father\'s Name',
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
                         controller: mothernameController,
                          decoration: InputDecoration(
                            hintText: 'Enter Mother\'s Name',
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
                       Text("Choose Class",
                       style: TextStyle(
                         color: Colors.purple
                       ),),
                         new DropdownButton<String>(
                           hint:  Text("Select Day"),
                           value: selectedClass,
                          items: <String>['Play-Group', 'Nursery', 'LKG-A', 'LKG-B', 'UKG'].map((String value) {
                                return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                );
                           }).toList(),
                          onChanged:(String newValue) {
        setState(() {
              selectedClass = newValue;
       });
},
                        ),
                     SizedBox(
                       height: 20,
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
                       height: 20,
                       ),
                  ],
                ),
              ),
               SizedBox(height: 10),
                  Text('$warningText',
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
      ),
    );
  }
}