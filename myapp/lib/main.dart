import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/get_started_student.dart';
import 'package:schoolapp/screens/Student/student_dashboard.dart';
import 'package:schoolapp/screens/Student/student_detail.dart';
import 'package:schoolapp/screens/Teacher/get_started_teacher.dart';
import 'package:schoolapp/screens/Teacher/teacher_dashboard.dart';
import 'package:schoolapp/screens/Teacher/teacher_detail.dart';
import 'package:schoolapp/screens/login_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        StudentGetStarted.routeName: (ctx) =>StudentGetStarted(),
        StudentDetail.routeName :(ctx) =>StudentDetail(),
        StudentDashboard.routeName : (ctx) =>StudentDashboard(),
        TeacherGetStarted.routeName: (ctx) =>TeacherGetStarted(),
        TeacherDetail.routeName: (ctx) =>TeacherDetail(),
        TeacherDashboard.routeName: (ctx) =>TeacherDashboard(),
      },
    );
  }
}
