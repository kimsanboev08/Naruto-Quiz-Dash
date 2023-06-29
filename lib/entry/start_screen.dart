import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:quiz/entry/headband.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changeScreen, {super.key});

  final void Function() changeScreen;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/images/Naruto_Background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.75),
              child: GradientText(
                "Naruto Quiz",
                style: const TextStyle(
                  fontSize: 40,
                  fontFamily: 'Naruto',
                ),
                colors: const [
                  Colors.orange,
                  Colors.yellow,
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.7),
              child: Headband(changeScreen: changeScreen),
            ),
          ],
        ),
      ),
    );
  }
}
