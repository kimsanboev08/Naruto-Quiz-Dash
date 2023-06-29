import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.tap,
  });

  final String answer;
  final void Function() tap;

  @override
  Widget build(context) {
    return SizedBox(
      width: 315,
      height: 58,
      child: ElevatedButton(
        onPressed: tap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 18,
          ),
          backgroundColor:
              const Color.fromARGB(255, 53, 52, 52).withOpacity(0.05),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            answer,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
