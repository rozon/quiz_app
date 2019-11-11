import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({this.resultScore, this.resetQuiz});

  String get scoreText {
    return 'Total Score: $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Quiz Complete',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          scoreText,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        FlatButton(
          textColor: Colors.blue,
          child: Text(
            'Restart',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: resetQuiz,
        )
      ],
    ));
  }
}
