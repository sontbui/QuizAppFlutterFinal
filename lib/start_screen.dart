import 'package:flutter/material.dart';

var color = Colors.black12;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function() startQuiz;
  void onPressed() {
    color = Colors.black12;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quizStartScreen.png',
            width: 150.0,
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: const Text(
              'Welcome to Quizz App By sontbui',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'HedvigLettersSerif',
                color: Color.fromARGB(255, 255, 255, 255),
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 80),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color.fromARGB(99, 253, 252, 252),
              ),
              foregroundColor: const Color.fromARGB(255, 28, 88, 49),
            ),
            label: const Text(
              'Start',
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
          ),
        ],
      ),
    );
  }
}
