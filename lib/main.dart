import 'package:flutter/material.dart';

import './question.dart';

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
    var questions = ["What is your name?", "What is your favourite animal?"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App")),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text("answer 1"), onPressed: _answerQuestion),
            ElevatedButton(
                child: Text("answer 2"), onPressed: () => print("HERE 2")),
            ElevatedButton(
                child: Text("answer 3"), onPressed: () => print("HERE 3")),
          ],
        ),
      ),
    );
  }
}
