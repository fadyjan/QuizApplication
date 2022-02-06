import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  Answers(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
