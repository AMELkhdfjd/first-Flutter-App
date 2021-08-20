// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      
      child : RaisedButton(
        color : Colors.blue,
        child: Text( "sign in"),
        onPressed:null,
        ),

        );
    
 
  }
}