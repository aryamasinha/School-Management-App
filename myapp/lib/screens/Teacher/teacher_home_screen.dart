import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/student_attendance_screen.dart';
import 'package:schoolapp/screens/Student/student_fee_screen.dart';
import 'package:schoolapp/screens/Student/student_result_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_attendance_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_fee_screen.dart';
import 'package:schoolapp/screens/Teacher/teacher_result_screen.dart';



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
    return MaterialApp(
      home: Scaffold(
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
        ],
        ),
           ),
         )
      )
      ),
    ); 
  }
}
