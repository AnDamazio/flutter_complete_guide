import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

// ignore: use_key_in_widget_constructors
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  // ignore: use_key_in_widget_constructors
  const Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
