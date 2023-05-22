import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/quiz_app.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  @override
  void initState() {
    activeScreen = 'start-screen';

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(context) {
    // ignore: non_constant_identifier_names
    final WidgetScreen = activeScreen == 'start-screen'
        ? QuizApp(switchScreen)
        : const QuestionScreen();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 124, 43, 138),
                Color.fromARGB(255, 106, 52, 147),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: WidgetScreen,
        ),
      ),
    );
  }
}
