import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp/screens/student_auth.dart';
import 'package:myapp/screens/superuser_auth.dart';
import 'package:myapp/screens/teacher_auth.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
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
            Positioned(
                top: screenHeight * .325,
                left: screenWidth * .10,
                right: screenWidth * .10,
                height: screenHeight * .35,
                //width: 250,
                child: Opacity(
                  opacity: 0.9,
                  child: Card(
                      color: Colors.amberAccent,
                      elevation: 10,

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.00)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(top: 15, bottom: 15.0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 94.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.deepOrange.shade900,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8,
                                      color: Colors.black26,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                ),
                                child: Text(
                                  'Are you a ?',
                                  style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color: Theme.of(context)
                                        .accentTextTheme
                                        .title
                                        .color,
                                    fontSize: 30,
                                    fontFamily: 'Anton',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              child: RaisedButton(
                                splashColor: Colors.deepOrange,
                                color: Colors.blueAccent,
                                padding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(StudentAuth.routeName);
                                },
                                child: Text(
                                  "Student".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              child: RaisedButton(
                                splashColor: Colors.deepOrange,
                                color: Colors.blueAccent,
                                padding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(TeacherAuth.routeName);
                                },
                                child: Text("Teacher".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),),
                              ),
                            ),
                            Container(
                              width: 150,
                              child: RaisedButton(
                                splashColor: Colors.deepOrange,
                                color: Colors.blueAccent,
                                padding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(SuperuserAuth.routeName);
                                },
                                child: Text("Principal".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),),
                              ),
                            ),
                          ],
                        ),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
