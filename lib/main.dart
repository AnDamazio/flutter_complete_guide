import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Rodrigo', 'Luizinho', 'Angela', 'Max'],
    },
    {
      'questionText': 'What\'s your favorite character?',
      'answers': ['Sócrates', 'Teeteto', 'Euclides', 'Terpsião'],
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(
        () => {
          _questionIndex + 1 < _questions.length
              ? _questionIndex++
              : print('Acabou')
        },
      );
      //print('Answer chosen! $_questionIndex');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex + 1 < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
