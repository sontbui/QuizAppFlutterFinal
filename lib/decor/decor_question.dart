import 'package:flutter/material.dart';

const Color colorQuestionText = Colors.black;

class QuestionText extends StatelessWidget {
  const QuestionText({super.key, required this.questionText});

  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: const TextStyle(
        fontFamily: 'HedvigLettersSerif',
        fontSize: 20,
        fontStyle: FontStyle.italic,
        color: colorQuestionText,
      ),
      textAlign: TextAlign.center,
    );
  }
}
