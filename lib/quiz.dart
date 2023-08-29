import 'package:adv_basics/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/startingscreen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/result_screen.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});
  @override
  State<quiz> createState() {
    return _quizState();
  }
}

class _quizState extends State<quiz> {
  var activescreen = 'startscreen';
  List<String> selectedAnswers = [];
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activescreen = 'resultscreen';
      });
    }
  }

  void switchscreen() {
    setState(() {
      activescreen = 'questionscreen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activescreen = 'questionscreen';
    });
  }

  @override
  Widget build(context) {
    Widget changescreen = StartingScreen(switchscreen);
    if (activescreen == 'questionscreen') {
      changescreen = questionscreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activescreen == 'resultscreen') {
      changescreen = resultScreen(
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 91, 75, 135),
              Color.fromARGB(77, 191, 111, 111)
            ])),
            child: changescreen),
      ),
    );
  }
}
