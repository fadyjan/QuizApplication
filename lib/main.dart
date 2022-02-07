import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

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
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Question(
                      QuestionsArray[_InitialIndex]['questionsText'] as String),
                  ...(QuestionsArray[_InitialIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answers(_xyz, answer);
                  }).toList(),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("You Did IT !! :D"),
                  ElevatedButton(
                      onPressed: _ReloadQuiz, child: const Text("Reload Quiz"))
                ],
              ),
      ),
    );
  }
}
