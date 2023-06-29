import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/data/quotes.dart';
import 'package:quiz/result/final_button.dart';
import 'package:quiz/result/score_text.dart';
import 'dart:math';

Random rand = Random();

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.onSummary,
    required this.onRestart,
    required this.results,
    required this.total,
  });

  final void Function() onSummary;
  final void Function() onRestart;
  final List<Map<int, String>> results;
  final int total;

  void switchScreen() {
    onSummary();
  }

  void switchScreen1() {
    onRestart();
  }

  @override
  Widget build(context) {
    final num = rand.nextInt(quotes.length);
    int questionIndex;
    String answer;
    int correctAnswerNum = 0;

    for (int i = 0; i < results.length; i++) {
      questionIndex = results[i].keys.toList()[0];
      answer = results[i].values.toList()[0];
      if (questions[questionIndex].answers[0] == answer) {
        correctAnswerNum++;
      }
    }
    String score = '${correctAnswerNum.toString()}/${total.toString()}';
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Results_Background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              const ScoreText(),
              Align(
                alignment: const Alignment(-1.005, -0.6),
                child: SizedBox(
                  width: 170,
                  height: 50,
                  child: Center(
                    child: Text(
                      score,
                      style: GoogleFonts.novaFlat(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.8, 0),
                child: Image.asset(
                  'assets/images/Quote_Background.png',
                  height: 400,
                  width: 380,
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.02),
                child: SizedBox(
                  width: 240,
                  child: Text(
                    quotes[num].quote,
                    style: GoogleFonts.merriweather(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.62, 0.23),
                child: Text(quotes[num].character,
                    style: GoogleFonts.merriweather(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
              ),
              Align(
                alignment: const Alignment(0, 0.78),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    FinalButton(
                      text: 'Summary',
                      onTap: switchScreen,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    FinalButton(
                      text: 'Restart',
                      onTap: switchScreen1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
