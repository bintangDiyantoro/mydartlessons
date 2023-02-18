import 'package:flutter/material.dart';
import './mytext.dart';
import './mybutton.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  String _message;

  List _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Navy', 'score': 10},
        {'text': 'Magenta', 'score': 20},
        {'text': 'Turquoise', 'score': 30},
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Camel', 'score': 10},
        {'text': 'Impala', 'score': 20},
        {'text': 'Cheetah', 'score': 30},
      ]
    },
    {
      'question': 'What\'s your favorite food?',
      'answer': [
        {'text': 'Bread', 'score': 10},
        {'text': 'Noodle', 'score': 20},
        {'text': 'Pasta', 'score': 30},
      ]
    },
  ];

  void _answerQuestion(int _score) {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex += 1;
      }

      _totalScore += _score;

      if (_totalScore == 30) {
        _message = 'Your score is $_totalScore!\nYou are a sweet person!';
      } else if (_totalScore > 30 && _totalScore <= 60) {
        _message = 'Your score is $_totalScore!\nYou are a nice person!';
      } else if (_totalScore > 60 && _totalScore < 90) {
        _message = 'Your score is $_totalScore!\nYou can be a dangerous person!';
      } else {
        _message = 'Your score is $_totalScore!\nYou are really dangerous person!';
      }
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Personality Quiz'),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_questionIndex < _questions.length)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyText(text: _questions[_questionIndex]['question']),
                  for (var _ans in _questions[_questionIndex]['answer'])
                    MyButton(
                        label: _ans['text'],
                        handler: () => _answerQuestion(_ans['score']))
                ],
              )
            else
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyText(text: _message),
                  MyButton(label: 'Restart!', handler: _restart)
                ],
              )
          ],
        ),
      ),
    );
  }
}
