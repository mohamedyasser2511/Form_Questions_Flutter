import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  @override
  AnswerButton({super.key, required this.answer, required this.onTap});

  final String answer;
  final void Function() onTap;

  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: Color.fromARGB(255, 97, 70, 145),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          answer,
          textAlign: TextAlign.center,
        ));
  }
}
