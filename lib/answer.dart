import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerText);

  final VoidCallback selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 25),
          ),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        child: Text(answerText),
      ),
    );
  }
}
