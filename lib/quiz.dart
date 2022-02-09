import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> QuestionsArray;
  final int _InitialIndex;
  final VoidCallback _xyz;

  Quiz(@required this._xyz, @required this.QuestionsArray,
      @required this._InitialIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(QuestionsArray[_InitialIndex]['questionsText'] as String),
        ...(QuestionsArray[_InitialIndex]['answers'] as List<String>)
            .map((answer) {
          return Answers(_xyz, answer);
        }).toList(),
      ],
    );
  }
}
