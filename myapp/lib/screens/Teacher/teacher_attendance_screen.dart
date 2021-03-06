import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/screens/logout.dart';



class TeacherAttendanceScreen extends StatefulWidget {

  @override
  _TeacherAttendanceScreenState createState() => _TeacherAttendanceScreenState();
}

class _TeacherAttendanceScreenState extends State<TeacherAttendanceScreen> {
  String _selectedDay = 'Monday';
  TextEditingController useridController = new TextEditingController();
  String _selectedAttendance = 'Absent';
  String warningText = '';

  void changeText() {
    setState(() {
      warningText = "Submitted Successfully!";
      _selectedDay = 'Monday';
      _selectedAttendance = 'Absent';
    });
  }

   void _pushDataAndNavigate(BuildContext context){
     if(useridController.text != ''){
        var data = {
     
     "status" : _selectedAttendance,
    }; 
    DatabaseReference dbref = new FirebaseDatabase().reference();
    String studentId = useridController.text;
        dbref.child('student-attendance-details-${_selectedDay}').remove();
    dbref.child('student-attendance-details-${_selectedDay}').child('$studentId').push().set(data);
     changeText();
     useridController.clear();
     }
   
  }


  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
    onWillPop: () async => false,
          child: MaterialApp(
        home: Scaffold(
           appBar: AppBar(
          backgroundColor:  Colors.white,
          title: const Text('First Step Play School',
          style: TextStyle(
            color:  Colors.purple
          ),),
          actions: <Widget>[
            
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.purple,
              ),
              onPressed: () {
                                        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Logout()
        ));
              },
            ),
          ]
          ),
        backgroundColor: Color.fromRGBO(220, 155, 253, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top :0,
            ),
            child: SingleChildScrollView(
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
                 SizedBox(height: 10),
                    Center(
                      child: Text(
                              '${warningText}',
                              style: TextStyle(
                                color: Colors.red
                              ),
                              ),
                    ),
                SizedBox(
                  height: 20,
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
                  SizedBox(
                  height: 20,
                ),
                SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);    
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'Go to Dashboard',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                  ],

                ),
            ),
            )
          )
        )
        
      ),
    );
  }
} 