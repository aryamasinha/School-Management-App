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
            top: 20,
          ),
          child:ListView(

                children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Center(
                            child: Text("Upload Result",
                            style: TextStyle(
                              fontFamily: "Cursive",
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Center(child: Text("Enter marks in each Subject[Enter hyphen(-) if Not Applicable]")),
                      ),
                      Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('English',
                     style: TextStyle(
                       fontSize:  15,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Hindi',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Bengali',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Math',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Drawing',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
               Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('G.K.',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('E.V.S.',
                     style: TextStyle(
                       fontSize: 15,
                     ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Marks',
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.purple,
                              fontSize: 15,
                            ),
                          ),
                       ),
                ),
              ])
            ]
        ),
                   ),   
                  ],
             ),     ),
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
          ),
        )
      )
    );
  }
} 