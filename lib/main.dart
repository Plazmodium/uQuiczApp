import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "What is your favourite animal?",
        "answer": ["Dog", "Cat", "Horse", "Lion"]
      },
      {
        "question": "What is your favourite colour?",
        "answer": ["Black", "Blue", "Red", "Yellow"]
      },
      {
        "question": "Who is your favourite singer?",
        "answer": ["Dylan", "Grohl", "Pavaroti", "Bob"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App")),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]["question"]),
            ...(questions[_questionIndex]["answer"] as List<String>)
                .map(
                  (answer) => Answer(title: answer, callback: _answerQuestion),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
