import 'package:flutter/material.dart';
import 'package:schoolapp/data/marks_data.dart';

Widget ResultWidget(Marks marks){
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
           child: SingleChildScrollView(
                        child: Card(
               child: Column(
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(
                       top: 20,
                     ),
                     child: Text(
                       "Result",
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
                             "Subject",
                             style: TextStyle(
                               fontSize: 22,
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(
                             top: 10,
                             left: 50,
                             right: 50,
                           ),
                           child: Text(
                             "Marks",
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text('English',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('${marks.englishmarks}',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Hindi',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('${marks.hindimarks}',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Bengali',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Math',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Drawing',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('G.K.',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ]),
               TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('E.V.S.',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('',
                     style: TextStyle(
                       fontSize: 20,
                     ),),
                ),
              ])
          ]
        ),
                   ),
        SizedBox(
          height: 10,
        ),
                   SizedBox(
                width: double.infinity,
                              child: RaisedButton(
                  onPressed: () {
                    
                  },
                  textColor: Colors.purple,
                  child: const Text(
                    'Check your Marks',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
            
          ],
        ),
                   ),
               ),
               ),
           ),
           ),
      );
  }