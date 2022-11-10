import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question ;
  final int questionIndex ;
  final Function(int sc) answerQuestion ;

    const Quiz({Key? key, required this.question, required this.questionIndex, required this.answerQuestion}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(question[questionIndex]['questionText'].toString()),
              ...(question[questionIndex]['answers'] as
               List<Map<String,Object>>).map((e) {//e like a loop on items in list
                 return Answer(()=> answerQuestion(int.parse(e['score'].toString())),
                 e['text'].toString());
               }).toList(),
            ],
          );
  }
}