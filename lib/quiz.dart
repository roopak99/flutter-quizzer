import 'package:flutter/material.dart';

import './answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionno;

  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.questionno});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionno]['questionText'],
        ),
        ...(questions[questionno]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestions, answer);
        }).toList()
      ],
    );
  }
}
