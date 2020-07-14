import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:schoolapp/data/marks_data.dart';
import 'package:schoolapp/screens/Student/student_result_widget.dart';

class StudentResultScreen extends StatefulWidget {

  String id;
  StudentResultScreen(this.id);

  @override
  _StudentResultScreenState createState() => _StudentResultScreenState();
}
 
 
class _StudentResultScreenState extends State<StudentResultScreen> {

     var bengalimarks , hindimarks, englishmarks, mathmarks, evsmarks,gkmarks,drawingmarks;
      Marks marks;
    
    @override
    void initState(){
      super.initState();
      DatabaseReference dbref = FirebaseDatabase.instance.reference();
      dbref.child('student-marks').child('student001').once().then((DataSnapshot snap){
         var keys = snap.value.keys;
         var data = snap.value;
         for(var key in keys){
          bengalimarks = data[key]["bengali"];
          drawingmarks =  data[key]["drawing"];
          englishmarks =  data[key]["english"];
          evsmarks =  data[key]["evs"];
          gkmarks =  data[key]["gk"];
          hindimarks = data[key]["hindi"];
          mathmarks = data[key]["math"];
         }
        
        marks = new Marks(evsmarks, gkmarks, englishmarks, bengalimarks, drawingmarks, mathmarks, hindimarks)  ;   
      });
      
  }
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (_,index){
        return ResultWidget(marks);
      },
    );
  }            
}