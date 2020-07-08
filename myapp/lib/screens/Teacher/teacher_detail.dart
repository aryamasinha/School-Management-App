import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Teacher/teacher_dashboard.dart';


class TeacherDetail extends StatelessWidget {
  static const routeName='/teacher-detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    top: 50,
                    bottom: 20,
                  ),
                  child: Image.asset(
                        'assets/images/teacher.png',
                        height: 200,
                        width: 200
                        ),
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
                     height: 40,
                     ),
                   Text("Upload your photograph"),
                   SizedBox(
                     height: 10,
                     ),
                   RaisedButton(
                  onPressed: () {},
                  textColor: Colors.purple,
                  child: const Text(
                    'Select an image',
                    style: TextStyle(fontSize: 15)
                  ),
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
                      Navigator.of(context).pushReplacementNamed(TeacherDashboard.routeName);
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