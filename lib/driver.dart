import 'package:flutter/material.dart';
import 'package:quiz/quiz/quiz_screen.dart';
import 'package:quiz/result/result_screen.dart';
import 'package:quiz/entry/start_screen.dart';
import 'package:quiz/summary/summary_screen.dart';
import 'package:quiz/mode/mode.dart';

class Driver extends StatefulWidget {
  const Driver({super.key});

  @override
  State createState() {
    return _DriverState();
  }
}

class _DriverState extends State<Driver> {
  var activeScreen = 'start-screen';
  var questionNum = 10;
  List<Map<int, String>> selectedAnswers = [];

  void start() {
    setState(() {
      activeScreen = 'mode-screen';
    });
  }

  void startquiz(int num) {
    setState(() {
      questionNum = num;
      activeScreen = 'quiz-screen';
    });
  }

  void selectAnswers(
    int questionIndex,
    String answer,
  ) {
    selectedAnswers.add({
      questionIndex: answer,
    });
    if (selectedAnswers.length == questionNum) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen1() {
    setState(() {
      activeScreen = 'summary-screen';
    });
  }

  void restart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(start);
    if (activeScreen == 'mode-screen') {
      screenWidget = Mode(onTap: startquiz);
    }
    if (activeScreen == 'quiz-screen') {
      screenWidget = QuizScreen(
          onSelectAnswer: selectAnswers, questionNumber: questionNum);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        onSummary: switchScreen1,
        onRestart: restart,
        results: selectedAnswers,
        total: questionNum,
      );
    } else if (activeScreen == 'summary-screen') {
      screenWidget = SummaryScreen(
        userAnswers: selectedAnswers,
        onRestart: restart,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screenWidget,
    );
  }
}
