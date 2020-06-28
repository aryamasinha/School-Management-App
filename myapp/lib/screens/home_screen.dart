import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.withOpacity(0.8),
                    Colors.white.withOpacity(0.8),
                    Colors.green.withOpacity(0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, .6, .9],
                ),
              ),
            ),
            Positioned(
                top: screenHeight * .325,
                left: screenWidth * .10,
                right: screenWidth * .10,
                height: screenHeight * .35,
                //width: 250,
                child: Opacity(
                    opacity: .2,
                    child: Card(
                        child: Column(
                      children: <Widget>[
                          Expanded(

                            child: Container(
                              color: Colors.red,
                                child: Text('Are You a ?'),
                              ),
                          ),

                      ],
                    )
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
