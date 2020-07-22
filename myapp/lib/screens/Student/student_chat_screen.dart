import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class StudentChatScreen extends StatefulWidget {

  String id;
  @override
  
  StudentChatScreen(this.id);
  _StudentChatScreenState createState() => _StudentChatScreenState();
}


class _StudentChatScreenState extends State<StudentChatScreen> {

  String id;
  String school_class ='';
  String messageText = '';
  TextEditingController messageController = new TextEditingController();
  String temp ='';


  @override
    void initState(){
      super.initState();
        id = widget.id;
        String temp_class;
        DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('student-class').child('$id').once().then((DataSnapshot snap){
          var keys = snap.value.keys;
          var data = snap.value;
          for(var key in keys){
          temp_class = data[key]["class"];
         }  
         school_class = temp_class;
      });
        school_class = "Play-Group";
        DatabaseReference dbref1 = FirebaseDatabase.instance.reference();
        dbref1.child('messages-${school_class}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         for(var key in keys){
          temp += data[key]["message"];
          temp += '\n';
         }  
      });
    
    }
  

  void refreshMessages(){
    setState(() {
        messageText = temp;
      });
  }

  
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: "Little Play School",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
          actions: <Widget>[
               IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white
              ),
              onPressed: () {
                    refreshMessages();
              },
            ),
          ],
          backgroundColor: Colors.purple
        ),
        body: SingleChildScrollView(
                  child: Card(
          child :Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                 Text("Hit Refresh to get previous Messages!",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 22
                    ),),
                    SizedBox(height: 10,),
                Container(
                  child: Card(
                    child: ListTile(
                      subtitle: Text('${messageText}\n',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Cursive"
                      ),),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}