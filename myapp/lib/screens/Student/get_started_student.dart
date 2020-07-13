import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/student_detail.dart';



class StudentGetStarted extends StatelessWidget {

  String id;

  StudentGetStarted(this.id);

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
            top: 100,
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/students.png',
                width: 500,
                height: 400,
              ),
              SizedBox(
                width: double.infinity,
                              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentDetail(id),
                    ));
                  },
                  textColor: Colors.purple,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}
