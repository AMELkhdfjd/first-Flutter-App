// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, file_names

import 'package:flutter/material.dart';


class Question extends StatelessWidget {

  String questiontext;
  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Text(questiontext);
}
}