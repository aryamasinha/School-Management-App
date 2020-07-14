import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/data/marks_data.dart';

class StudentResultScreen extends StatefulWidget {

  String id;
  StudentResultScreen(this.id);

  @override
  _StudentResultScreenState createState() => _StudentResultScreenState();
}
 
 
class _StudentResultScreenState extends State<StudentResultScreen> {

     String bengalimarks = '' , hindimarks = '' , englishmarks ='', mathmarks = '', evsmarks ='',gkmarks ='',drawingmarks ='';
      
      String bengali = '' , hindi = '' , english ='', math = '', evs ='',gk ='',drawing ='';
      String id;

    @override
    void initState(){
      id = widget.id;
      super.initState();
      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('student-marks').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         for(var key in keys){
          bengalimarks = data[key]["bengali"];
          drawingmarks =  data[key]["drawing"];
          englishmarks =  data[key]["english"];
          evsmarks =  data[key]["evs"];
          gkmarks =  data[key]["gk"];
          hindimarks = data[key]["hindi"];
          mathmarks = data[key]["math"];
         }     
      });
  }

  void changeMarks(){
    setState(() {
     bengali = bengalimarks;
     gk = gkmarks;
     hindi =hindimarks;
     english = englishmarks;
     math = mathmarks;
     evs = evsmarks;
     drawing = drawingmarks;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
    onWillPop: () async => false,
          child: MaterialApp(
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
                    child: Text('${english}',
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
                    child: Text('${hindi}',
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
                    child: Text('${bengali}',
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
                    child: Text('${math}',
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
                    child: Text('${drawing}',
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
                    child: Text('${gk}',
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
                    child: Text('${evs}',
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
                      changeMarks();
                    },
                    textColor: Colors.purple,
                    child: const Text(
                      'Check your Marks',
                      style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),
                SizedBox(
                height: 20,
              ),
              SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);    
                      },
                      textColor: Colors.purple,
                      child: const Text(
                        'Go to Dashboard',
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
        ),
    );
  }            
}