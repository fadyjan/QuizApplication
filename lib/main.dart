import 'package:flutter/material.dart';
import 'package:flutter_application_1/result.dart';
import './questions.dart';
import './answers.dart';
import 'questions.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _InitialIndex = 0;

  _xyz() {
    setState(() {
      _InitialIndex = _InitialIndex + 1;
    });
  }

  _ReloadQuiz() {
    setState(() {
      _InitialIndex = 0;
    });
  }

  final QuestionsArray = const [
    {
      'questionsText': "what\'s your favorite color ?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionsText': "what\'s your favorite animal ?",
      'answers': ['Lion', 'Tiger', 'Dog', 'Panther'],
    },
    {
      'questionsText': "what\'s your favorite Film ?",
      'answers': ['Interstiller', 'batman', 'avengars'],
    },
  ];
  Widget build(BuildContext context) {
    // const QuestionsArray = ["FirstQuestion", "SecondQuestion", "ThirdQuestion"];
    // ignore: non_constant_identifier_names

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              "Quiz App",
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: _InitialIndex < QuestionsArray.length
              ? Quiz(_xyz, QuestionsArray, _InitialIndex)
              : Result(_ReloadQuiz)),
    );
  }
}
