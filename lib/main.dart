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

     void _answerQuestion (){
       setState(() {
            _questionindex ++;
       });
       
      
    }

  @override
  Widget  build( BuildContext  context){
    var questions = [
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
 
    return  MaterialApp( 
      home : Scaffold(
        appBar: AppBar(
          title: const Text("my flutter app"),
          
          ),
        
          body: Column(
            children :  <Widget>[

              Question(
                //? add the "as String" to specify that we have a list of strings not objects
                (questions[_questionindex]['questionText'] ) as String,
              ),
              //adding the values of a list to the list of children
              ...(questions[_questionindex]['answers'] as List<String>).map((answer){
                return Answer  (  _answerQuestion , answer);
              }).toList()
             
   

            ],
          )
        )
    
    );

        

      
    }
  }
  


