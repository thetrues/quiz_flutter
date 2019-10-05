import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restQuiz;
  Result(this.resultScore, this.restQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 30) {
       resultText = 'You are awesome';
    } else if (resultScore >= 20) {
       resultText = 'You are still awesome';
    } else if (resultScore >= 10) {
       resultText = 'budaaa!!!!!!!';
    } else {
       resultText = 'Just come another day';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            textColor: Colors.blueAccent,
            child: Text('Try Again'),
            onPressed: restQuiz,
          ),
        ],
      ),
    );
  }
}
