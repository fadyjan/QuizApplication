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
      if (_InitialIndex > 2) {
        _InitialIndex = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    const QuestionsArray = ["FirstQuestion", "SecondQuestion", "ThirdQuestion"];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("First App"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(QuestionsArray[_InitialIndex]),
            Answers(_xyz),
            Answers(_xyz),
            Answers(_xyz),
          ],
        ),
      ),
    );
  }
}
