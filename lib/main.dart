// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';

import 'logic/result.dart';
import 'logic/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color w = Colors.white;
Color b = Colors.black;
Color g = Colors.green;
Color o = Colors.orange;

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitch = false;

  int _totalscore = 0;
  int _questionindex = 0;

  void _restartQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionindex += 1;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 15},
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Cat', 'score': 20},
        {'text': 'Dog', 'score': 10},
        {'text': 'Fish', 'score': 5},
      ]
    },
    {
      'questionText': "What's your favorite  City?",
      'answers': [
        {'text': 'Cairo', 'score': 10},
        {'text': 'Alex', 'score': 20},
        {'text': 'Dahab', 'score': 40},
      ]
    },
    {
      'questionText': "What's your favorite cafe?",
      'answers': [
        {'text': 'Moca', 'score': 5},
        {'text': 'Latia', 'score': 10},
        {'text': 'Black Cofe', 'score': 20},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: g,
        title: Text(
          'Quiz app',
          style: TextStyle(color: w, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Switch(
              activeColor: g,
              activeTrackColor: w,
              inactiveThumbColor: g,
              //= o because inactive
              inactiveTrackColor: w,
              //= b because inactive

              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                  if (isSwitch == true) {
                    b = Colors.white;
                    w = Colors.black;
                    o = Colors.green;
                    g = Colors.orange;
                  }
                  if (isSwitch == false) {
                    w = Colors.white;
                    b = Colors.black;
                    g = Colors.green;
                    o = Colors.orange;
                  }
                });
              })
        ],
      ),
      body: Container(
        color: w,
        width: double.infinity,
        child: _questionindex < _question.length
            ? Quiz(
                question: _question,
                questionIndex: _questionindex,
                answerQuestion: answerQuestion)
            : Result(_restartQuiz, _totalscore),
      ),
    );
  }
}
