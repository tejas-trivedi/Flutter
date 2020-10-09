import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 40) {
      resultText = 'Bronze';
    } else if (resultScore <= 60) {
      resultText = 'Silver';
    } else if (resultScore <= 75) {
      resultText = 'Gold';
    } else {
      resultText = 'Platinum';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
