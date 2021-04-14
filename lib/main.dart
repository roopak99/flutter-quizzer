import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'what\'s your favourite food?',
      'answers': [
        'simple food',
        'pizza',
        'burger',
        'chicken',
      ]
    },
    {
      'questionText': 'what\'s your pet name?',
      'answers': [
        'no pet',
        'alpha',
        'beta',
        'gamma',
      ]
    },
    {
      'questionText': 'what\'s your name?',
      'answers': [
        'roopak',
        'deepak',
        'manjusha',
        'bedekar',
      ]
    },
  ];

  int questionno = 0;

  void resetQuiz() {
    setState(() {
      questionno = 0;
    });
  }

  void keyPressed() {
    setState(() {
      questionno++;
    });
    print(questionno);
    if (questionno < questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer'),
        ),
        body: (questionno < questions.length)
            ? Quiz(
                answerQuestions: keyPressed,
                questions: questions,
                questionno: questionno)
            : Result(resetQuiz),
      ),
    );
  }
}
