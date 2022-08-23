import 'dart:ui';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String title;
  Function callback;

  Answer({Key key, String title = "Add text", Function callback})
      : super(key: key) {
    this.title = title;
    this.callback = callback;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        child: Text(title),
        onPressed: callback,
      ),
    );
  }
}
