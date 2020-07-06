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
             bottom: 80,
             top: 50,
           ),
           child: Card(
             child: Column(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 20,
                   ),
                   child: Text(
                     "Fee Details",
                     style: TextStyle(
                       color: Colors.purple,
                       fontFamily: "Cursive",
                       fontSize: 30,
                       fontWeight: FontWeight.w800,
                     ),
                   ),
                 ),
                 Container(
                   child: Row(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(
                           top: 10,
                           left: 50,
                           right: 50,
                         ),
                         child: Text(
                           "Month",
                           style: TextStyle(
                             fontSize: 22,
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(
                           top: 10,
                           left: 25,
                           right: 50,
                         ),
                         child: Text(
                           "Paid/Unpaid",
                           style: TextStyle(
                             fontSize: 22,
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Table(
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('January',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('February',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('March',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('April',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('May',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('June',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('July',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('August',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('September',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('October',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
              TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('November',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),
               TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('December',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('',
                   style: TextStyle(
                     fontSize: 15,
                   ),),
              ),
            ]),

          ]
        ),
                 )
               ],
             ),
             ),
           ),
      ),      
      ));
  }            
}