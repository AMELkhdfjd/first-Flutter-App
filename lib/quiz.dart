import  'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';



class Quiz  extends StatelessWidget {
 
 final List<Map<String,Object>> questions;
 final int  questionIndex ;
 final VoidCallback answerQuestion;
 const Quiz({
   required this.answerQuestion,
   required this.questionIndex,
   required this.questions
   

 });


  @override
  Widget build(BuildContext context) {
    return  Column(
            children :  <Widget>[

              Question(
                //? add the "as String" to specify that we have a list of strings not objects
                (questions[questionIndex]['questionText'] ) as String,
              ),
              //adding the values of a list to the list of children
              ...(questions[questionIndex]['answers'] as List<String>).map((answer){
                return Answer    ( answerQuestion , answer);
              }).toList()
             
   

            ],
          ) ;
  }
}