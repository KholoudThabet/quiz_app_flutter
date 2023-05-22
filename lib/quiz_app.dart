import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp(this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200.0),
          const SizedBox(height: 20.0),
          const Text(
            'Learn Flutter By Fun',
            style: TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 20.0),
          TextButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
