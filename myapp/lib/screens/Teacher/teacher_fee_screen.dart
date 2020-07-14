import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/screens/logout.dart';

class TeacherFeeScreen extends StatefulWidget {
  @override
  _TeacherFeeScreenState createState() => _TeacherFeeScreenState();
}



class _TeacherFeeScreenState extends State<TeacherFeeScreen> {
  String _selectedMonth = 'January';
  String _selectedFeeStatus = 'Unpaid';
  TextEditingController useridController = new TextEditingController();
  String warningText = '';

  void _pushDataAndNavigate(BuildContext context){
    if(useridController.text != ''){
        var data = {
    
     "status" : _selectedFeeStatus,
    }; 
    DatabaseReference dbref = new FirebaseDatabase().reference();
    String studentId = useridController.text;
     dbref.child('student-fee-details-${_selectedMonth}').remove();
    dbref.child('student-fee-details-${_selectedMonth}').child('$studentId').push().set(data);
    useridController.clear();
    changeText();
    }
  }

  void changeText() {
    setState(() {
      warningText = "Submitted Successfully!";
      _selectedMonth = 'January';
      _selectedFeeStatus = 'Unpaid';
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
              top: 0,
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
                       Text("Choose Month"),
                       new DropdownButton<String>(
                           hint:  Text("Select Month"),
                           value: _selectedMonth,
                          items: <String>['January', 'February', 'March', 'April', 'May' ,'June' , 'July', 'August','September','October','November','December'].map((String value) {
                                return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                );
                           }).toList(),
                          onChanged:(String newValue) {
        setState(() {
              _selectedMonth = newValue;
       });
},
                        ),
                       SizedBox(
                         height: 20,
                       ),
                        Text("Choose Fee Payment status"),
                    SizedBox(
                         height: 10,
                         ),
                         new DropdownButton<String>(
                           hint:  Text("Select Status"),
                           value: _selectedFeeStatus,
  items: <String>['Paid','Unpaid'].map((String value) {
      return new DropdownMenuItem<String>(
        value: value,
        child: new Text(value),
      );
  }).toList(),
  onChanged: (String newValue) {
      setState(() {
        _selectedFeeStatus = newValue;
       });
},
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
                        onPressed: () {
                          _pushDataAndNavigate(context);
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                SizedBox(height: 10),
                    Center(
                      child: Text(
                              '${warningText}',
                              style: TextStyle(
                                color: Colors.red
                              ),
                              ),
                    ),
                  
                SizedBox(height: 10,),
                            SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        textColor: Colors.purple,
                        child: const Text(
                          'Go to DashBoard',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                ),
                  ],

                ),
            ),
            )
          )
        )
        
      ),
    );
  }
} 