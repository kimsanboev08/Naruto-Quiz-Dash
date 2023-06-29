import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreText extends StatelessWidget {
  const ScoreText({super.key});

  @override
  Widget build(context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(-0.9, -0.78),
          child: Text(
            'Sc',
            style: GoogleFonts.novaFlat(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.75, -0.776),
          child: Image.asset(
            'assets/images/Uzumaki_Clan_Symbol.png',
            width: 95,
            height: 95,
          ),
        ),
        Align(
          alignment: const Alignment(-0.415, -0.78),
          child: Text(
            're',
            style: GoogleFonts.novaFlat(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
