import 'package:codeme/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
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
  final _quest = const [
    {
      'questionText': 'What\'s is your name?',
      'answers': [
        {'text': 'Samweli', 'score': 10},
        {'text': 'Tuji', 'score': 9},
        {'text': 'Miki', 'score': 8},
        {'text': 'Abou', 'score': 7},
      ],
    },
    {
      'questionText': 'Where are you from?',
      'answers': [
        {'text': 'Arusha', 'score': 10},
        {'text': 'Dar', 'score': 9},
        {'text': 'Tanga', 'score': 8},
        {'text': 'Kigoma', 'score': 7},
      ],
    },
    {
      'questionText': 'how are you',
      'answers': [
        {'text': 'Good', 'score': 4},
        {'text': 'Bad', 'score': 3},
        {'text': 'Hungry', 'score': 1},
        {'text': 'Sick', 'score': 5},
      ],
    },
    {
      'questionText': 'what\'s do you eat today',
      'answers': [
        {'text': 'Maandazi', 'score': 2},
        {'text': 'Mkate', 'score': 1},
        {'text': 'Ugali', 'score': 10},
        {'text': 'chips', 'score': 0},
      ],
    },
    {
      'questionText': 'do you know about flutter?',
      'answers': [
        {'text': 'yes', 'score': 5},
        {'text': 'not', 'score': 3},
        {'text': 'not yet', 'score': 3},
        {'text': 'am studing', 'score': 3},
      ],
    },
  ];

  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
     _totalScore= 0;
     _questIndex = 0; 
    });
  }
  void _answerQuestion(int score) {
    if (_questIndex < _quest.length) {
      print('sam');
    }
    _totalScore += score;
    setState(() {
      _questIndex = _questIndex + 1;
    });
    print(_questIndex);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questIndex < _quest.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questIndex: _questIndex,
                quest: _quest,
              )
            : Result(_totalScore, _resetQuiz),
          
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
