import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback _ReloadQuiz;
  Result(this._ReloadQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("You Did IT !! :D"),
        ElevatedButton(onPressed: _ReloadQuiz, child: const Text("Reload Quiz"))
      ],
    );
  }
}
