import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/get_started_student.dart';
import 'package:schoolapp/screens/Teacher/get_started_teacher.dart';




class LoginScreen extends StatefulWidget {

  List<String> userids = [];
  List<String> password = [];
  List<String> type = [];

  LoginScreen(this.userids,this.password,this.type);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String id;

  String userType;

  String warningText = ' ';

  TextEditingController useridController = new TextEditingController();

  TextEditingController passwordController = new TextEditingController();

  bool _isValidDetail(){ 
    for(int i=0;i<widget.userids.length;i++){
      if(widget.userids[i] == useridController.text){
        if(widget.password[i] == passwordController.text){
            id =  widget.userids[i];
            userType = widget.type[i];
            return true;
        }
      }
    }
    return false;
  }

    void _sendDataToNextScreen(BuildContext context) {
      if(_isValidDetail() && (userType == "student")){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentGetStarted(id),
        ));
      }
      else if(_isValidDetail() && (userType == "teacher")){
         Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeacherGetStarted(id),
        ));
      }
      else{
        changeText(); 
      }
  }

  void changeText() {

    setState(() {
     warningText = "Invalid Credentials. Please Try again!";
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
                    child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                  ),
                  child: Image.asset(
                        'assets/images/FSPS.jpg',
                        height: 100,
                        width: 100),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  
                  child: Text("Login",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.purple,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    bottom: 10,
                    right: 20,
                    left: 20,
                  ),
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Card(
                      color: Color.fromRGBO(220, 155, 253, 0.7),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: TextField(
                              controller: useridController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter LoginID',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Raleway",
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: TextField(
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter password',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Raleway",
                                )
                              ),
                            ),
                          ),
                          
                        
                        ],
                    ),
                  ),
                )
                ),
                SizedBox(height: 10),
                  Text(
                          '${warningText}',
                          style: TextStyle(
                            color: Colors.red
                          ),
                          ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: SizedBox(
                    
                    width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      _sendDataToNextScreen(context);
                    },
                    textColor: Colors.purple,
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20)
                    ),
                  ),
                  )
                  ),
                ],
              ),
           ), 

          ),
        ),
      ),
    ); 
  }
}
