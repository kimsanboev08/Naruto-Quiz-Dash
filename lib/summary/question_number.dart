import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({super.key, required this.col, required this.number});

  final Color col;
  final int number;

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: col,
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
