// import 'package:flutter/material.dart';

// class QuestionSummary extends StatelessWidget {
//   const QuestionSummary(this.summaryData, {super.key});

//   final List<Map<String, Object>> summaryData;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: SingleChildScrollView(
//         child: Column(
//           children: summaryData.map(
//             (data) {
//               return Row(
//                 children: [
//                   Text(
//                     ((data['Question_index'] as int) + 1).toString(),
//                     style: const TextStyle(
//                       fontFamily: 'HedvigLettersSerif',
//                       fontSize: 15,
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Text(
//                           data['Question'] as String,
//                           style: const TextStyle(
//                             fontFamily: 'HedvigLettersSerif',
//                             fontSize: 15,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           data['User_answer'] as String,
//                           style: const TextStyle(
//                             fontFamily: 'HedvigLettersSerif',
//                             fontSize: 15,
//                           ),
//                         ),
//                         Text(
//                           data['Correct_answer'] as String,
//                           style: const TextStyle(
//                             color: Colors.green,
//                             fontFamily: 'HedvigLettersSerif',
//                             fontSize: 15,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ).toList(),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color background = Colors.white;
    Color userAnswerColor = Colors.green;
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              if (data['User_answer'] == data['Correct_answer']) {
                background = const Color.fromARGB(255, 253, 253, 253);
                userAnswerColor = Colors.green;
              } else {
                background = const Color.fromARGB(255, 145, 138, 138);
                userAnswerColor = const Color.fromARGB(255, 0, 24, 245);
              }
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 12),
                      child: Text(
                        ((data['Question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          fontFamily: 'HedvigLettersSerif',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['Question'] as String,
                            style: const TextStyle(
                              fontFamily: 'HedvigLettersSerif',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Your Answer: ${data['User_answer']}',
                            style: TextStyle(
                              fontFamily: 'HedvigLettersSerif',
                              fontSize: 15,
                              color: userAnswerColor,
                            ),
                          ),
                          Text(
                            'Correct Answer: ${data['Correct_answer']}',
                            style: const TextStyle(
                              fontFamily: 'HedvigLettersSerif',
                              fontSize: 15,
                              color: Color.fromARGB(255, 3, 12, 3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
