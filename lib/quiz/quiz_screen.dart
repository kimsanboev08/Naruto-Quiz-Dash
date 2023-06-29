import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quiz/data/pictures.dart';
import 'package:quiz/quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

Random rand = Random();

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    required this.onSelectAnswer,
    required this.questionNumber,
  });

  final void Function(int questionIndex, String answer) onSelectAnswer;
  final int questionNumber;

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var index = 0;

  Set<int> setOfInts = Set();

  void changeQuestion(String answer, int questionIndex) {
    widget.onSelectAnswer(questionIndex, answer);
    setState(() {
      index++;
    });
  }

  @override
  Widget build(context) {
    int num = widget.questionNumber;
    final len = questions.length;
    int picLenght = pictures.length;
    String background = pictures[rand.nextInt(picLenght)];

    while (setOfInts.length < num) {
      setOfInts.add(rand.nextInt(len));
    }
    final currentQuestionIndex = setOfInts.elementAt(index);
    final currentQuestion = questions[currentQuestionIndex];
    //Color textColor = Colors.white.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    return Container(
      decoration: BoxDecoration(
        //color: Colors.red,
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Align(
          alignment: const Alignment(0, -0.15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultTextStyle(
                style: GoogleFonts.fjallaOne(
                  color: Colors.white,
                  fontSize: 25,
                ),
                child: Text(
                  currentQuestion.question,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              ...currentQuestion.getShuffledAnswers().map((option) {
                return Column(
                  children: [
                    AnswerButton(
                      answer: option,
                      tap: () {
                        changeQuestion(
                          option,
                          currentQuestionIndex,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
