import 'package:flutter/material.dart';
import 'package:quiz_app/quizz.dart';
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 224, 186, 98),
//                 Color.fromARGB(255, 207, 118, 80),
//               ],
//               begin: Alignment.bottomRight,
//               end: Alignment.centerLeft,
//             ),
//           ),
//           child: const StartScreen(),
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(const Quiz());
}
