import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/data/marks_data.dart';
import 'package:schoolapp/screens/logout.dart';

class StudentResultScreen extends StatefulWidget {

  String id;
  StudentResultScreen(this.id);

  @override
  _StudentResultScreenState createState() => _StudentResultScreenState();
}
 
 
class _StudentResultScreenState extends State<StudentResultScreen> {

     String bengalimarks = '' , hindimarks = '' , englishmarks ='', mathmarks = '', evsmarks ='',gkmarks ='',drawingmarks ='';     
      String bengali = '' , hindi = '' , english ='', math = '', evs ='',gk ='',drawing ='';

    String bengalimarks1 = '' , hindimarks1 = '' , englishmarks1 ='', mathmarks1 = '', evsmarks1 ='',gkmarks1 ='',drawingmarks1 ='';     
      String bengali1 = '' , hindi1 = '' , english1 ='', math1 = '', evs1='',gk1 ='',drawing1 ='';

String bengalimarks2 = '' , hindimarks2 = '' , englishmarks2 ='', mathmarks2 = '', evsmarks2 ='',gkmarks2 ='',drawingmarks2 ='';     
      String bengali2 = '' , hindi2 = '' , english2 ='', math2 = '', evs2 ='',gk2 ='',drawing2 ='';

      String id;
    @override
    void initState(){
      id = widget.id;
      super.initState();

      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      
      dbref.child('student-marks-First-Term').child('${id}').once().then((DataSnapshot snap){
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
        dbref.child('student-marks-Half-Yearly').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         for(var key in keys){
          bengalimarks1 = data[key]["bengali"];
          drawingmarks1 =  data[key]["drawing"];
          englishmarks1 =  data[key]["english"];
          evsmarks1 =  data[key]["evs"];
          gkmarks1 =  data[key]["gk"];
          hindimarks1 = data[key]["hindi"];
          mathmarks1 = data[key]["math"];
         }     
      });
        dbref.child('student-marks-Annual').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         for(var key in keys){
          bengalimarks2 = data[key]["bengali"];
          drawingmarks2 =  data[key]["drawing"];
          englishmarks2 =  data[key]["english"];
          evsmarks2 =  data[key]["evs"];
          gkmarks2 =  data[key]["gk"];
          hindimarks2 = data[key]["hindi"];
          mathmarks2 = data[key]["math"];
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
     bengali1 = bengalimarks1;
     gk1 = gkmarks1;
     hindi1 =hindimarks1;
     english1 = englishmarks1;
     math1 = mathmarks1;
     evs1 = evsmarks1;
     drawing1 = drawingmarks1;
     bengali2 = bengalimarks2;
     gk2 = gkmarks2;
     hindi2 =hindimarks2;
     english2 = englishmarks2;
     math2 = mathmarks2;
     evs2 = evsmarks2;
     drawing2 = drawingmarks2;
    });
  }
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
                       Padding(
                       padding: const EdgeInsets.only(
                         top: 20,
                       ),
                       child: Text(
                         "First Term Examination",
                         style: TextStyle(
                           color: Colors.purple,
                           
                           fontSize: 20,
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
                               right: 20,
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
                            Padding(
                       padding: const EdgeInsets.only(
                         top: 20,
                       ),
                       child: Text(
                         "Half Yearly Examination",
                         style: TextStyle(
                           color: Colors.purple,
                           
                           fontSize: 20,
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
                               right: 20,
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
                    child: Text('${english1}',
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
                    child: Text('${hindi1}',
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
                    child: Text('${bengali1}',
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
                    child: Text('${math1}',
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
                    child: Text('${drawing1}',
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
                    child: Text('${gk1}',
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
                    child: Text('${evs1}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ])
            ]
          ),
                     ),
                            Padding(
                       padding: const EdgeInsets.only(
                         top: 20,
                       ),
                       child: Text(
                         "Annual Examination",
                         style: TextStyle(
                           color: Colors.purple,
                           
                           fontSize: 20,
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
                               right: 20,
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
                    child: Text('${english2}',
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
                    child: Text('${hindi2}',
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
                    child: Text('${bengali2}',
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
                    child: Text('${math2}',
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
                    child: Text('${drawing2}',
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
                    child: Text('${gk2}',
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
                    child: Text('${evs2}',
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