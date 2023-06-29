import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionColumn extends StatelessWidget {
  const QuestionColumn({
    super.key,
    required this.question,
    required this.answer,
    required this.col,
  });

  final String question;
  final String answer;
  final Color col;

  @override
  Widget build(context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question,
            style: GoogleFonts.oswald(
              color: Colors.black,
              fontSize: 21,
            ),
          ),
          Text(
            answer,
            style: GoogleFonts.oswald(
              color: col,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 17,
          ),
        ],
      ),
    );
  }
}
