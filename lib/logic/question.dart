import 'package:flutter/material.dart';
import '../main.dart';

class Question extends StatelessWidget {
  final String questiontext ;

  const Question(this.questiontext, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child:  Text(
              questiontext,
              style: TextStyle(
                fontSize: 30,
                color: b,
                fontWeight: FontWeight.bold),
              textAlign:TextAlign.center,
              ),
              );
  }
}