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
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Lion', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Rodrigo', 'score': 2},
        {'text': 'Luizinho', 'score': 1},
        {'text': 'Angela', 'score': 3},
        {'text': 'Max', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite character?',
      'answers': [
        {'text': 'Sócrates', 'score': 1},
        {'text': 'Teeteto', 'score': 2},
        {'text': 'Euclides', 'score': 3},
        {'text': 'Terpsião', 'score': 4}
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _totalScore += score;
      setState(
        () => {
          _questionIndex < _questions.length
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
