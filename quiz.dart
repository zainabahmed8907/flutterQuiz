import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeredQuestion;
  Quiz({this.questions, this.questionIndex, this.answeredQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['asnwers'] as List<Map<String, Object>>).map((answer) {
          return Answer(()=>answeredQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
