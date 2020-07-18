import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/student_attendance_screen.dart';
import 'package:schoolapp/screens/Student/student_fee_screen.dart';
import 'package:schoolapp/screens/Student/student_result_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_attendance_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_chat_home_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_fee_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_ht_wt.dart';
import 'package:schoolapp/screens/Teacher/teacher_result_screen.dart';
import 'package:schoolapp/screens/logout.dart';



void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new TeacherHomeScreen()
    ));
}
class TeacherHomeScreen extends StatelessWidget {
 
 const TeacherHomeScreen();

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
        backgroundColor: Colors.purple,
        body: Center(
           child: Padding(
             padding: const EdgeInsets.only(
               left: 50,
               right: 50,
               top: 50,
             ),
             child: SingleChildScrollView(
                          child: Column(
                 children: <Widget>[
                InkWell(
                  onTap: (){
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>TeacherResultScreen()
          ));
                  },
                              child: SingleChildScrollView(
                                                          child: Card(                     
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.5,
                                              child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage("assets/images/result.png",),
                                alignment: Alignment.bottomCenter,
                            ),
                          ),
                      ),
                        ),
                      Center(
                          child: Text("Result",
                          style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway"
                  ),),),
                      ],
                      ),
          ),
                              ),
                ), 
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TeacherFeeScreen()
          ));
            },
                      child: Card(                     
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.5,
                                            child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/fee.jpeg",),
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                      ),
                        ),
                      Center(
                          child: Text("Fee",
                          style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway"
                  ),),),
                      ],
                      ),
            ),
          ), 
           SizedBox(height: 20,),
          InkWell(
            onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>TeacherAttendanceScreen()
          ));
            },
                      child: Card(                     
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.5,
                                            child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/attendance.png",),
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                      ),
                        ),
                      Center(
                          child: Text("Attendance",
                          style: TextStyle(
                          color: Colors.blue,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway"
                  ),),),
                      ],
                      ),
            ),
          ), 
           SizedBox(height: 20),
            InkWell(
            onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentHeightWeight()
          ));
            },
                      child: Container(
                        width: 320,
                            height: 150,
                        child: Card(                     
                    child: 
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Enter Student Details",
                              style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Raleway"
                  ),),
                            ),),
        
                        
            ),
                      )
                      ,
          ), 
           SizedBox(height: 20),
           SizedBox(
                  width: double.infinity,
                                child: RaisedButton(
                    onPressed: () {
                                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>TeacherChatHomeScreen()
          ));
                          },
                    textColor: Colors.purple,
                    child: const Text(
                      'Go to Chat Screen',
                      style: TextStyle(fontSize: 20)
                    ),
                  ),
                ), 
          ],
          ),
             ),
           )
        )
        ),
      ),
    ); 
  }
}
