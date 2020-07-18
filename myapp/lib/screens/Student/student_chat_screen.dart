import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class StudentChatScreen extends StatefulWidget {
  @override

  String id;
  StudentChatScreen(this.id);
  _StudentChatScreenState createState() => _StudentChatScreenState();
}

class _StudentChatScreenState extends State<StudentChatScreen> {


  String id;
  String messageText = '';
  TextEditingController messageController = new TextEditingController();
  String temp ='';
  String school_class = '';

  @override
    void initState(){
      super.initState();
        id = widget.id;
        DatabaseReference dbref = FirebaseDatabase.instance.reference();
         dbref.child('student-class').child('{$id}').once().then((DataSnapshot snap){
            var keys = snap.value.keys;
            var data = snap.value;
            for(var key in keys){
            school_class =  data[key]["class"];
         }  
      });
      dbref.child('messages-${school_class}').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         for(var key in keys){
          temp += data[key]["message"];
          print(temp);
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
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text("Hit Refresh to get Messages of the class group!",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 22
                      ),),
                 ),
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



