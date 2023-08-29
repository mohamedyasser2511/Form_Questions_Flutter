import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingScreen extends StatelessWidget {
  StartingScreen(this.Change, {super.key});
  final void Function() Change;
  butt() {}
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 80),
          Text(
            'Answer the questions',
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 108, 37, 132),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: Change,
              style: OutlinedButton.styleFrom(foregroundColor: (Colors.white)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'StartQuiz',
              ))
        ],
      ),
    );
  }
}
