import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/summary/summary_data.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen(
      {super.key, required this.userAnswers, required this.onRestart});

  final List<Map<int, String>> userAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getResults() {
    final List<Map<String, Object>> results = [];
    for (int i = 0; i < userAnswers.length; i++) {
      int index = userAnswers[i].keys.toList()[0];
      results.add(
        {
          'question_index': i,
          'question_text': questions[index].question,
          'correct_answer': questions[index].answers[0],
          'user_answer': userAnswers[i].values.toList()[0],
        },
      );
    }
    return results;
  }

  void restart() {
    onRestart();
  }

  @override
  Widget build(context) {
    final results = getResults();
    final numTotal = userAnswers.length;
    final numCorrect = results
        .where((element) => element['correct_answer'] == element['user_answer'])
        .length;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Summary_Background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You answered $numCorrect out of $numTotal questions correctly!',
                  style: GoogleFonts.oswald(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                SummaryData(results),
                const SizedBox(height: 40),
                TextButton.icon(
                  onPressed: restart,
                  icon: const Icon(Icons.refresh),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  label: Text(
                    'Restart Quiz',
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
