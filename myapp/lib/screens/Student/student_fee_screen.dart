import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class StudentFeeScreen extends StatefulWidget {


  StudentFeeScreen(id);

  @override
  _StudentFeeScreenState createState() => _StudentFeeScreenState();
}

class _StudentFeeScreenState extends State<StudentFeeScreen> {
  String id;
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

   @override
    void initState(){
      super.initState();
      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('student-fee-details-January').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-February').child('student001').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         

      });
       dbref.child('student-fee-details-March').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-April').child('student001').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-May').child('student001').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-June').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-July').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-August').child('student001').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-September').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-October').child('student001').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-November').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });
       dbref.child('student-fee-details-December').child('student001').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
         var data = snap.value;
         var temp;
         for(var key in keys){
          temp = data[key]["status"];
          
         }
         datafee4 = (snap.value == null)? 'Unpaid' : temp;
         
      });

  }


   void changeFeeStatus(){
       
    setState(() {
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

            ]
          ),
          
                     ),
                      SizedBox(
                height: 20,
              ),
              SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                      onPressed: () {
                         changeFeeStatus();
                      },
                      textColor: Colors.purple,
                      child: const Text(
                        'Check your Fee Detail',
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
        )),
    );
  }            
}