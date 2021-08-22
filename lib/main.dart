// ignore_for_file: deprecated_member_use, avoid_print, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_flutter_app/quiz.dart';
import './Question.dart';
import './answer.dart';
import './result.dart';

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

     void _answerQuestion (){
       if(_questionindex < questions.length){
           setState(() {
            _questionindex ++;
       });

       }
       else{

       }
     
       
      
    }
     final questions = const [
      //! we use const instrad of final because this questions never changes even if after compile time or after the run
      //! time contrary to the final that can change dinamecaly during the compile time

      //? we use const before the list to make it never change and before the object to not change it 
      {'questionText':  "what is your favorite calor ?",
        'answers': ['red', 'blue', 'green',]
      },

     {'questionText':  "what is your favorite animal ?",
        'answers': ['rabbit', 'bird', 'elephant','lion','cat']
      },

        {'questionText':  "what is your favorite indtractor ?",
        'answers': ['max', 'max', 'max']
      }
    ];

  @override
  Widget  build( BuildContext  context){
   
 
    return  MaterialApp( 
      home : Scaffold(
        appBar: AppBar(
          title: const Text("my flutter app"),
          
          ),
        
          body:  _questionindex < questions.length 
          ?  Quiz( answerQuestion: _answerQuestion, questionIndex: _questionindex,questions: questions,)
          : Result(),
        )
    
    );

        

      
    }
  }
  


