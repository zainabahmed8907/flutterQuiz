import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key key}) : super(key: key);
  final Function answerHandler;
  final String answerText;
  Answer(this.answerHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: RaisedButton(
        
        
        color:Colors.black,
        onPressed: answerHandler,
        child: Text(answerText,
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),

      ),
    );
  }
}
