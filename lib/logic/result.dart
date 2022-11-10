import 'package:flutter/material.dart';
import '../main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultscore;
  const Result(this.q, this.resultscore, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultscore >= 70) {
      resultText = 'You are awesome';
    } else if (resultscore >= 40) {
      resultText = 'You are good';
    } else {
      resultText = 'You are bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(resultPhrase,
            style: TextStyle(
                fontSize: 50,
                color: b,
                shadows: [
                  Shadow(color: g, offset: const Offset(5, 5), blurRadius: 1)
                ],
                fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: q,
            child: Text(
              'Restart The App >>',
              style: TextStyle(
                  fontSize: 25,
                  color: g,
                  shadows: [
                    Shadow(color: b, offset: const Offset(5, 5), blurRadius: 3)
                  ],
                  fontWeight: FontWeight.bold),
            )),
      ],
    ));
  }
}
