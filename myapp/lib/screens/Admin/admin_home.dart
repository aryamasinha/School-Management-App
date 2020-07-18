import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Admin/admin_detail_screen.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
    onWillPop: () async => false,
          child: MaterialApp(
        home: Scaffold(
          body:  Padding(
            padding: const EdgeInsets.only(
             top: 100,
             left: 20,
             right: 20,
            ),
            child: Column(
              children: <Widget>[
               
                    SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                            onPressed: () {
                                 Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdminDetail()
          ));
                            },
                            textColor: Colors.purple,
                            child: const Text(
                              'Check Student Details',
                              style: TextStyle(fontSize: 20)
                            ),
                          ),
                    ),
              ],
            ),
          ),  
        ),
      ),
    );
  }
}