import 'package:flutter/material.dart';
import 'package:schoolapp/screens/Student/student_home_screen.dart';



class StudentDashboard extends StatelessWidget {
  String id;

  StudentDashboard(this.id);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    StudentHomeScreen(),
    Text(
      'Chat feature',
      style: optionStyle,
    ),
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            size: 35,
            color: Colors.purple,),
            title: Text('Home',
            style: TextStyle(
              fontSize: 15,
              color: Colors.purple
            ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,
            size: 35,
            color: Colors.purple,),
            title: Text('Chat',
            style: TextStyle(
              fontSize: 15,
              color: Colors.purple,
            ),),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
