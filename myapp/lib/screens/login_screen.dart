import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter email',
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Login ID',
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
                onPressed: () {},
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