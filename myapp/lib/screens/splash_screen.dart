import 'package:flutter/material.dart';

import 'dart:async';

import 'package:myapp/screens/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),switchScreen);
  }
  void switchScreen(){
    Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/images/android.png',/*fit: BoxFit.cover*/),
      ),

    );
  }
}
