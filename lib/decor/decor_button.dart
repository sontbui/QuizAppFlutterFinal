import 'package:flutter/material.dart';

const Color colorBackgroundButton = Colors.white;
const Color colorOptionAnswerText = Colors.black;
const Color colorForegroundButton =
    Color.fromARGB(255, 3, 36, 251); // color when press button
const Color colorShadowButton = Color.fromARGB(255, 0, 0, 0);

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.optionAnserText,
    required this.onTap,
    super.key,
  });

  final String optionAnserText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          foregroundColor: colorForegroundButton,
          backgroundColor: colorBackgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 20,
          shadowColor: colorShadowButton.withOpacity(0.9)),
      child: Text(
        optionAnserText,
        style: const TextStyle(
          color: colorOptionAnswerText,
          fontFamily: 'HedvigLettersSerif',
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
      // child: Text(
      //   optionAnserText,
      //   maxLines: 3,
      //   overflow: TextOverflow.ellipsis,
      //   style: const TextStyle(
      //     color: colorOptionAnswerText,
      //     fontFamily: 'HedvigLettersSerif',
      //     fontSize: 15,
      //   ),
      //   textAlign: TextAlign.center,
      // ),
    );
  }
}
