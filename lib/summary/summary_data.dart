import 'package:flutter/material.dart';
import 'package:quiz/summary/question_column.dart';
import 'package:quiz/summary/question_number.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            Color col = const Color.fromARGB(255, 0, 182, 15);
            if (data['user_answer'] != data['correct_answer']) {
              col = Colors.red;
            }
            return Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text(((data['question_index'] as int) + 1).toString()),
                QuestionNumber(
                  col: col,
                  number: ((data['question_index'] as int) + 1),
                ),
                const SizedBox(
                  width: 20,
                ),
                QuestionColumn(
                  question: data['question_text'].toString(),
                  answer: data['user_answer'].toString(),
                  col: col,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
