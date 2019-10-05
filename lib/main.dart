import 'package:flutter/material.dart';
import 'package:codeme/question.dart';
import './answer.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questIndex = _questIndex + 1;
    });

    print(_questIndex);
  }

  @override
  Widget build(BuildContext context) {
    var quest = [
      'What\'s is your name?',
      'Where are you from?',
      'how are you',
      'what\'s do you eat today',
      'do you know about flutter?'
    ];
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(
              quest[_questIndex],
            ),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

/*  RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: _answerQuestion,
            ),
            */