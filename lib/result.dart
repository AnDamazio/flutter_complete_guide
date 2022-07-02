import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;

  // ignore: use_key_in_widget_constructors
  const Result(this.resultScore);

  String get resultPhrase {
    try {
      var resultText = '';
      if (resultScore <= 8) {
        resultText = 'You are cool';
      } else if (resultScore <= 12) {
        resultText = 'Pretty likeable!';
      } else if (resultScore <= 16) {
        resultText = 'You are ... strange?!';
      } else {
        resultText = 'You are so bad!';
      }
      return resultText;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}