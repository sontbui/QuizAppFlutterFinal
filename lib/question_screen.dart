import 'package:flutter/material.dart';
import 'package:quiz_app/ListQuestion/question_list.dart';
import 'package:quiz_app/decor/decor_button.dart';
import 'package:quiz_app/decor/decor_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QuestionText(questionText: currentQuestion.questionString),
            const SizedBox(height: 50),
            ...currentQuestion.getShuffledAnswer().map((OptionAnswer) {
              return AnswerButton(
                optionAnserText: OptionAnswer,
                onTap: () {
                  answerQuestion(OptionAnswer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
