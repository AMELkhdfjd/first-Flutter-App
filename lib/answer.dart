
// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answerText;
  const Answer (this.selecthandler, this.answerText);
  

  

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      
     
      child : RaisedButton(
      
        child: Text( answerText),
         textColor: Colors.white,
        color : Colors.lightBlue,
       
        onPressed: selecthandler,

        ),

        );
    
 
  }
}