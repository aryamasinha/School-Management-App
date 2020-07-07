import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  
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
                          bottom: 20,
                        ),
                        child: Text("Upload Fee Details",
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
                          hintText: 'Enter Student ID',
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
                    Text("Enter Fee Payment status"),
                   Row(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(
                           left: 40,
                           right: 50,
                         ),
                         child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.purple,
                  child: const Text(
                          'Paid',
                          style: TextStyle(fontSize: 15)
                  ),
                ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 20,
                        ),
                        child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.purple,
                  child: const Text(
                          'Unpaid',
                          style: TextStyle(fontSize: 15)
                  ),
                ),
                      ),
                     ],
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