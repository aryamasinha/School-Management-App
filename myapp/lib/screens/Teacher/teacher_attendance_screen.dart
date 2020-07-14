import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';



class TeacherAttendanceScreen extends StatefulWidget {

  @override
  _TeacherAttendanceScreenState createState() => _TeacherAttendanceScreenState();
}

class _TeacherAttendanceScreenState extends State<TeacherAttendanceScreen> {
  String _selectedDay = 'Monday';
  TextEditingController useridController = new TextEditingController();
  String _selectedAttendance = 'Absent';

   void _pushDataAndNavigate(BuildContext context){
    var data = {
     "day" : _selectedDay,
     "status" : _selectedAttendance,
    }; 
    DatabaseReference dbref = new FirebaseDatabase().reference();
    String studentId = useridController.text;
    dbref.child('student-attendance-details').child('$studentId').push().set(data);
    
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
            top :100,
          ),
          child: Column(
              children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Text("Upload Attendance",
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
                   Text("Choose Day"),
                   new DropdownButton<String>(
                       hint:  Text("Select Day"),
                       value: _selectedDay,
                      items: <String>['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'].map((String value) {
                            return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                            );
                       }).toList(),
                      onChanged:(String newValue) {
      setState(() {
          _selectedDay = newValue;
     });
},
                    ),
                   SizedBox(
                     height: 20,
                   ),
                    Text("Choose Attendance Status"),
                SizedBox(
                     height: 10,
                     ),
                     new DropdownButton<String>(
                       hint:  Text("Select Status"),
                       value: _selectedAttendance,
  items: <String>['Present','Absent'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),
  onChanged: (String newValue) {
    setState(() {
      _selectedAttendance = newValue;
     });
},
),
                SizedBox(
                     height: 10,
                     ),
                ],
              ),
            ),
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
      
    );
  }
} 