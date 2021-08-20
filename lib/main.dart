// ignore_for_file: deprecated_member_use, avoid_print, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';

void main() => runApp( MyApp());

class  MyApp extends StatefulWidget {
  

  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
 
  var _questionindex = 0;
     void _answer (){
       setState(() {
            _questionindex ++;
       });
       
      
    }

  @override
  Widget  build( BuildContext  context){
    var questions = [
      "what is your favorite calor",
      "what is your favorite animal",
    ];
 
    return  MaterialApp( 
      home : Scaffold(
        appBar: AppBar(
          title: const Text("my flutter app"),
          
          ),
        
          body: Column(
            children :  <Widget>[

              Question(
                questions[_questionindex],
              ),
            Answer(),
            Answer(),
            Answer(),



            ]
          )
        )
    
    );

        

      
    }
  }
  


