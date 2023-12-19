import 'package:flutter/material.dart';
import 'package:quiz_app/ListQuestion/question_list.dart';
import 'package:quiz_app/models/question_summary.dart';
import 'package:quiz_app/quizz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; ++i) {
      summary.add(
        {
          'Question_index': i,
          'Question': questions[i].questionString,
          'Correct_answer': questions[i].optionAnswer[0],
          'User_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  Quiz theEndButton() {
    return const Quiz();
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['User_answer'] == data['Correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $numCorrectQuestion out of $numTotalQuestion correctly !',
              style: const TextStyle(
                fontFamily: 'HedvigLettersSerif',
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Your Score is: ${numCorrectQuestion.toInt() * 0.5}',
              style: const TextStyle(
                fontFamily: 'HedvigLettersSerif',
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: () {
                // Chuyển sang màn hình thứ hai khi nút được nhấn
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Quiz()),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 151, 150, 150),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                side: const BorderSide(
                  color: Color.fromARGB(0, 255, 255, 255), // Màu viền
                ),
              ),
              label: const Text(
                'Do it again',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'HedvigLettersSerif',
                  color: Color.fromARGB(255, 251, 251, 251),
                ),
              ),
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              // child: const Text(
              //   'Do it again ->',
              //   style: TextStyle(
              //     fontSize: 18,
              //     color: Color.fromARGB(255, 255, 255, 255), // Màu chữ
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
