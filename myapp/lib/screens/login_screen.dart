import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/get_started_student.dart';
import 'package:schoolapp/screens/Teacher/get_started_teacher.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isStudent=true;
    var isTeacher=false;
    var isPrincipal=false;
    final _emailController=TextEditingController();
    final _passwordController = TextEditingController();
    void _submit(){
      // function added to check for empty fields
      print(_emailController.text);
      print(_passwordController.text);
      if(_passwordController.text.isEmpty||_emailController.text.isEmpty){
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text('An Error Occurred!'),
            content: Text('Id and Password field must be filled'),
            actions: <Widget>[
              FlatButton(
                child: Text('Okay'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              )
            ],
          ),
        );
      }
      else{
        if(isStudent){
          Navigator.of(context).pushReplacementNamed(StudentGetStarted.routeName);
        }
        else if(isTeacher){
          Navigator.of(context).pushReplacementNamed(TeacherGetStarted.routeName);
        }
        else{

        }
      }
    }
    return Scaffold(
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
                            controller: _emailController,
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
                            controller: _passwordController,
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
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: SizedBox(
                  
                  width: double.infinity,
                child: RaisedButton(
                  onPressed: _submit,
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
    ); 
  }
}
