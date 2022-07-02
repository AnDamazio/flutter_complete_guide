import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';

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
  static const questions = [
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
          _questionIndex + 1 < questions.length
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
        body: _questionIndex + 1 < questions.length
            ? Column(
                children: [
                  Question(
                      questionText:
                          questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : const Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
