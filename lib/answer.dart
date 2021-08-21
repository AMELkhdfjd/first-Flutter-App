
// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  const Answer (this.selecthandler);
  

  

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      
     
      child : RaisedButton(
      
        child: Text( "pink"),
         textColor: Colors.white,
        color : Colors.red,
       
        onPressed: selecthandler,

        ),

        );
    
 
  }
}