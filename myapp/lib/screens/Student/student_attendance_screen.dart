import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromRGBO(220, 155, 253, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 80,
            top: 50,
          ),
          child: Card(
            child: Column(
              children: <Widget>[
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
                          right: 50,
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
                            child: Text(
                              'Monday',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Tuesday',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Wednesday',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Thursday',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Friday',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ]),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Percentage",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Monthly',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Yearly',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
