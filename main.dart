import 'package:flutter/material.dart';

import 'package:flutterfire/quiz.dart';
import 'package:flutterfire/results.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _questionIndex = 0;
  var totalScore = 0;
  var _questions = [
    {
      'question': 'Which is the biggest city of Pakistan?',
      'answers': [
        {'text': 'Karachi', 'score': 10},
        {'text': 'Islamabad', 'score': 20},
        {'text': 'Lahore', 'score': 5}
      ],
    },
    {
      'question': 'Who is the founder of Pakistan?',
      'answers': [
        {'text': 'Quaid e azam', 'score': 20},
        {'text': 'Allama Iqbal', 'score': 10},
        {'text': 'Liaqat Ali khan', 'score': 0}
      ],
    },
    {
      'question': 'Where is Minar-e-Pakistan',
      'answers': [
        {'text': 'Karachi', 'score': 20},
        {'text': 'Lahore', 'score': 10},
        {'text': 'Islamabad', 'score': 0}
      ],
    }
  ];
  void _answeredQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
   
  }

  void _resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz game'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
            child: _questionIndex < _questions.length
                ? Quiz(
                    questionIndex: _questionIndex,
                    answeredQuestion: _answeredQuestion,
                    questions: _questions)
                : Result(totalScore, _resetQuiz)));
  }
}
