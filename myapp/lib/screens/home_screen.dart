import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.withOpacity(0.8),
                    Colors.white.withOpacity(0.8),
                    Colors.green.withOpacity(0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, .6, .9],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(

                  width: double.infinity,
                  child: Text(
                    'You Are a ?',
                    style: TextStyle(fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text("Student", style: TextStyle(fontSize: 28)),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text("Teacher", style: TextStyle(fontSize: 28)),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text("Principal", style: TextStyle(fontSize: 28)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
