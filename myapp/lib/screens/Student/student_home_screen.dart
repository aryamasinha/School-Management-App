import 'package:flutter/material.dart';

class StudentHomeScreen extends StatelessWidget {
 
 const StudentHomeScreen();

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
           child: Column(
             children: <Widget>[
            Card(                     
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
        SizedBox(height: 20,),
        Card(                     
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
         SizedBox(height: 20,),
        Card(                     
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
        ],
        ),
         )
      )
      ),
    ); 
  }
}
