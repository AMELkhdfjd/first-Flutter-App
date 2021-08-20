// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';


class Question extends StatelessWidget {

  final String questiontext;
  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      margin: EdgeInsets.all( 10),
      child :Text(
      questiontext ,
      style : TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
    )
    );
}

}
