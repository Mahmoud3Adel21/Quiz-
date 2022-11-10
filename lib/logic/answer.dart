import 'package:flutter/material.dart';
import '../main.dart';
class Answer extends StatelessWidget {
 final String _answerText ;
 final VoidCallback x;
 const Answer (this.x,this._answerText, {Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(g),
                  ),
                onPressed: x,
                child:  Text(
                  _answerText,
                  style:  TextStyle(fontSize: 30,color: w),),
                ),
                );
  }
}