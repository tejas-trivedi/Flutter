import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.white)
        ),
      ),
    );
  }
}
