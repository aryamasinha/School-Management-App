import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
    ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      photoSize: 100.0,
      
      image: Image.asset(
                  'assets/images/FSPS.jpg',
                  ),
      navigateAfterSeconds: LoginScreen(),
      loaderColor: Colors.white,

      title: Text("\nFirst Step Play School",
            style: TextStyle(
              color: Colors.green,
              fontFamily: "Raleway",
              fontSize: 30,
              fontWeight: FontWeight.w800,    
            ) 
          ),
    );
  }
}