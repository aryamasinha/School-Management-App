import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class TeacherChatScreen extends StatefulWidget {
  @override

  String school_class;

  TeacherChatScreen(this.school_class);
  _TeacherChatScreenState createState() => _TeacherChatScreenState();
}

class _TeacherChatScreenState extends State<TeacherChatScreen> {

  String school_class ;
  String messageText = '';
  TextEditingController messageController = new TextEditingController();
  String temp ='';


  @override
    void initState(){
      super.initState();
      school_class = widget.school_class;
        DatabaseReference dbref = FirebaseDatabase.instance.reference();
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

  void sendMessageAndDisplay(){
    setState(() {
        messageText += '\n';
        messageText += messageController.text;
      });
    school_class = widget.school_class;
    if(messageText!= ''){
        var data = {
          "message" :  messageController.text,
    }; 
    DatabaseReference dbref = new FirebaseDatabase().reference();
    dbref.child('messages-${school_class}').push().set(data);
      
      messageController.clear();
  }
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
                Card(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      
                      hintText: 'Message',
                      suffixIcon:
                          IconButton(icon: 
                          Icon(Icons.send),
                           color: Colors.purple,
                          onPressed: (){
                            sendMessageAndDisplay();
                          }),
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

