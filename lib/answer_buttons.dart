import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final Function() onTap;

  const AnswerButton(this.answerText, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          primary: const Color.fromARGB(255, 139, 95, 147),
          backgroundColor: const Color.fromARGB(255, 139, 95, 147),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(answerText,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
