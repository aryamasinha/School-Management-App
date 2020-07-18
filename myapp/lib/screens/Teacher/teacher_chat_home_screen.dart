import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Teacher/teacher_chat_screen.dart';
import 'package:schoolapp/screens/logout.dart';

class TeacherChatHomeScreen extends StatefulWidget {
  @override
  _TeacherChatHomeScreenState createState() => _TeacherChatHomeScreenState();
}

class _TeacherChatHomeScreenState extends State<TeacherChatHomeScreen> {
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
              top: 0,
            ),
            child:SingleChildScrollView(
                          child: Column(
                  children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Text("Choose Class",
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
                       
                SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherChatScreen("Play-Group")
        ));
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'Play-Group',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                SizedBox(height: 20),
                   
                            SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                                           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherChatScreen("Nursery")
        ));
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'Nursery',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                 SizedBox(height: 20),
                   
                            SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                                           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherChatScreen("LKG-A")
        ));
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'LKG-A',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                 SizedBox(height: 20),
                   
                            SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                                           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherChatScreen("LKG-B")
        ));
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'LKG-B',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                 SizedBox(height: 20),
                   
                            SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                                           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherChatScreen("UKG")
        ));
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'UKG',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                    SizedBox(height: 20),
                   
                            SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'Go to DashBoard',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                  ],

                ),
            ),
                  ],
            )
          )
          )
        )
        )
      ),
    );
  }
}