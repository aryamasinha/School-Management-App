import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/student_auth.dart';
import 'package:myapp/screens/superuser_auth.dart';
import 'package:myapp/screens/teacher_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        StudentAuth.routeName: (ctx) => StudentAuth(),
        TeacherAuth.routeName: (ctx) => TeacherAuth(),
        SuperuserAuth.routeName: (ctx) => SuperuserAuth(),
      },
    );
  }
}


