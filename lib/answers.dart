import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnswerText;
  Answers(this.selectHandler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      child: ElevatedButton(
        child: Text(AnswerText),
        onPressed: selectHandler,
      ),
    );
  }
}
