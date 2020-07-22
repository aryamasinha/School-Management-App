import 'package:flutter/material.dart';
import 'package:schoolapp/screens/logout.dart';
import 'package:firebase_database/firebase_database.dart';

class AdminDetail extends StatefulWidget {
  @override
  _AdminDetailState createState() => _AdminDetailState();
}

class _AdminDetailState extends State<AdminDetail> {


  String monday = '';
String tuesday = '';
String wednesday = '';
String thursday = '';
String friday = '';
String monday1 = '';
String tuesday1 = '';
String wednesday1= '';
String thursday1 = '';
String friday1 = '';
String fee0 = '';
  String fee1 = '';
  String fee2 = '';
  String fee3 = '';
  String fee4 = '';
  String fee5 = '';
  String fee6 = '';
  String fee7 = '';
  String fee8 = '';
  String fee9 = '';
  String fee10 = '';
  String fee11 = '';

  String datafee0 = '';
  String datafee1 = '';
  String datafee2 = '';
  String datafee3 = '';
  String datafee4 = '';
  String datafee5 = '';
  String datafee6 = '';
  String datafee7 = '';
  String datafee8 = '';
  String datafee9 = '';
  String datafee10 = '';
  String datafee11 = '';
    TextEditingController useridController = new TextEditingController();

     String bengalimarks = '' , hindimarks = '' , englishmarks ='', mathmarks = '', evsmarks ='',gkmarks ='',drawingmarks ='';     
      String bengali = '' , hindi = '' , english ='', math = '', evs ='',gk ='',drawing ='';

    String bengalimarks1 = '' , hindimarks1 = '' , englishmarks1 ='', mathmarks1 = '', evsmarks1 ='',gkmarks1 ='',drawingmarks1 ='';     
      String bengali1 = '' , hindi1 = '' , english1 ='', math1 = '', evs1='',gk1 ='',drawing1 ='';

String bengalimarks2 = '' , hindimarks2 = '' , englishmarks2 ='', mathmarks2 = '', evsmarks2 ='',gkmarks2 ='',drawingmarks2 ='';     
      String bengali2 = '' , hindi2 = '' , english2 ='', math2 = '', evs2 ='',gk2 ='',drawing2 ='';
 String id;
    
    void getValues(){
      
      id = useridController.text;
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
      dbref.child('student-attendance-details-Monday').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         monday1 = (snap.value == null)? 'Absent' : temp;
         
      });
        dbref.child('student-attendance-details-Tuesday').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         tuesday1 = (snap.value == null)? 'Absent' : temp;
         
      });
       dbref.child('student-attendance-details-Wednesday').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         wednesday1 = (snap.value == null)? 'Absent' : temp;
         
      });
       dbref.child('student-attendance-details-Thursday').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         thursday1 = (snap.value == null)? 'Absent' : temp;
         
      });
       dbref.child('student-attendance-details-Friday').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         friday1 = (snap.value == null)? 'Absent' : temp;
      });
      dbref.child('student-fee-details-January').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee0 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-February').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee1 = (snap.value == null)? 'Unpaid' : temp;
         

      });
       dbref.child('student-fee-details-March').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee2 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-April').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee3 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-May').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-June').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee5 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-July').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee6 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-August').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee7 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-September').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee8 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-October').child('${id}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee9 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-November').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee10 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-December').child('${id}').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee11 = (snap.value == null)? 'Unpaid' : temp;
         
      });
      useridController.clear();
  }


   

  void changeValues(){
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
      monday = monday1;
    tuesday = tuesday1;
    wednesday = wednesday1;
    thursday = thursday1;
    friday = friday1;
     fee0 = datafee0;
    fee1 = datafee1;
    fee2 = datafee2;
    fee3 = datafee3;
    fee4 = datafee4;
    fee5 = datafee5;
    fee6 = datafee6;
    fee7 = datafee7;
    fee8 = datafee8;
    fee9 = datafee9;
    fee10 = datafee10;
    fee11 = datafee11;
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
                           left: 10,
                           right: 10,
                         ),
                         child: TextField(
                           controller: useridController,
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
                      SizedBox(
            height: 10,
          ),
                     SizedBox(
                  width: double.infinity,
                                child: RaisedButton(
                    onPressed: () {
                      getValues();
                      changeValues();
                    },
                    textColor: Colors.purple,
                    child: const Text(
                      'Check Detail of Student',
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
                   Padding(
                       padding: const EdgeInsets.only(
                         top: 20,
                       ),
                       child: Text(
                         "Attendance",
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
                               "Day",
                               style: TextStyle(
                                 fontSize: 22,
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(
                               top: 10,
                               left: 70,
                               right: 20,
                             ),
                             child: Text(
                               "Present/\nAbsent",
                               style: TextStyle(
                                 fontSize: 20,
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
                    child: Text('Monday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${monday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Tuesday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${tuesday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Wednesday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${wednesday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Thursday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${thursday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
                 TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Friday',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${friday}',
                       style: TextStyle(
                         fontSize: 20,
                       ),),
                  ),
                ]),
            ]
          ),
        ),
        SizedBox(
            height: 10,
          ),
    
             
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
                               "Paid/\nUnpaid",
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
                    child: Text('April',
                       style: TextStyle(
                         fontSize: 15,
                       ),),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('${fee3}',
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
                    child: Text('${fee4}',
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
                    child: Text('${fee5}',
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
                    child: Text('${fee6}',
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
                    child: Text('${fee7}',
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
                    child: Text('${fee8}',
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
                    child: Text('${fee9}',
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
                    child: Text('${fee10}',
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
                    child: Text('${fee11}',
                       style: TextStyle(
                         fontSize: 15,
                       ),),
                  ),
                ]),
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
                    child: Text('${fee0}',
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
                    child: Text('${fee1}',
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
                    child: Text('${fee2}',
                       style: TextStyle(
                         fontSize: 15,
                       ),),
                  ),
                ]),
            ]
          ),
          
                     ),
                      SizedBox(
                height: 20,
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
