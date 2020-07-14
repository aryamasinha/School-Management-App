import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class StudentAttendanceScreen extends StatefulWidget {

String id;


StudentAttendanceScreen(this.id);

  @override
  _StudentAttendanceScreenState createState() => _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {


  String monday = '';
String tuesday = '';
String wednesday = '';
String thursday = '';
String friday = '';
String monday1 = '';
String tuesday1 = '';
String wednesday1= '';
String thursday1 = '';
String friday1 = '';

@override
    void initState(){
      super.initState();
      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('student-attendance-details-Monday').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         monday1 = (snap.value == null)? 'Absent' : temp;
         
      });
        dbref.child('student-attendance-details-Tuesday').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         tuesday1 = (snap.value == null)? 'Absent' : temp;
         
      });
       dbref.child('student-attendance-details-Wednesday').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         wednesday1 = (snap.value == null)? 'Absent' : temp;
         
      });
       dbref.child('student-attendance-details-Thursday').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         thursday1 = (snap.value == null)? 'Absent' : temp;
         
      });
       dbref.child('student-attendance-details-Friday').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         friday1 = (snap.value == null)? 'Absent' : temp;
      });
  }


   void changeAttendanceStatus(){
       
    setState(() {
    monday = monday1;
    tuesday = tuesday1;
    wednesday = wednesday1;
    thursday = thursday1;
    friday = friday1;
    });

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
               bottom: 80,
               top: 50,
             ),
             child: SingleChildScrollView(
                          child: Card(
                 child: Column(
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(
                         top: 20,
                       ),
                       child: Text(
                         "Attendance",
                         style: TextStyle(
                           color: Colors.purple,
                           fontFamily: "Cursive",
                           fontSize: 30,
                           fontWeight: FontWeight.w800,
                         ),
                       ),
                     ),
                     Container(
                       child: Row(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(
                               top: 10,
                               left: 50,
                               right: 50,
                             ),
                             child: Text(
                               "Day",
                               style: TextStyle(
                                 fontSize: 22,
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(
                               top: 10,
                               left: 70,
                               right: 50,
                             ),
                             child: Text(
                               "Present/\nAbsent",
                               style: TextStyle(
                                 fontSize: 20,
                               ),
                             ),
                           )
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Monday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${monday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Tuesday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${tuesday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Wednesday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${wednesday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Thursday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${thursday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Friday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${friday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
            ]
          ),
        ),
        SizedBox(
            height: 10,
          ),
    
              SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                      onPressed: () {
                         changeAttendanceStatus();
                      },
                      textColor: Colors.purple,
                      child: const Text(
                        'Check your Attendance Detail',
                        style: TextStyle(fontSize: 20)
                      ),
                    ),
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
          )
          
          ,),
             ),
                   ),),
               ),
      ),
    );
  }            
}