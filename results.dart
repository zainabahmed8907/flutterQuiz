import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);
  final int resultScore;
  final Function resetHander;
  Result(this.resultScore,this.resetHander);

  String get resultPhrase {
    var resultText = "";
    if (resultScore <= 8) {
      resultText = "You are innocent";
    } else if (resultScore > 8) {
      resultText = "Very very Nice";
    } else if (resultScore > 15) {
      resultText = "Brilliant!!!!";
    } else if (resultScore > 20) {
      resultText = "You are extraordinary";
    } else {
      resultText = "You are megamind ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text(resultPhrase)),
        FlatButton(
          onPressed: resetHander,
         child: Text('Restart'),
         
        )
      ],
    );
  }
}
