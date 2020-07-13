import 'package:flutter/material.dart';

class StudentDetail extends StatelessWidget {
   
  String id;

  StudentDetail(this.id);

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
                   Padding(
                     padding: const EdgeInsets.only(
                       left: 10,
                       right: 10,
                     ),
                     child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Class',
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
                                        Padding(
                     padding: const EdgeInsets.only(
                       left: 10,
                       right: 10,
                     ),
                     child: TextField(
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
            SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                    onPressed: () {},
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
    );
  }
}