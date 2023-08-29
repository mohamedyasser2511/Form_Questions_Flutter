import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class questionscreen extends StatefulWidget {
  const questionscreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<questionscreen> createState() {
    return _questionscreenState();
  }
}

class _questionscreenState extends State<questionscreen> {
  var currentquestions = 0;
  answerquestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentquestions++;
    });
  }

  Widget build(context) {
    final quest = questions[currentquestions];
    return Center(
        child: Container(
      margin: EdgeInsets.all(40),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quest.questions,
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Color.fromARGB(255, 227, 205, 227),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...quest.getShuffle().map((answer) {
              return AnswerButton(
                  answer: answer,
                  onTap: () {
                    answerquestion(answer);
                  });
            }),
          ]),
    ));
  }
}
