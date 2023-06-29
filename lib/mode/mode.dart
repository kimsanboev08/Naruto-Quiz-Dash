import 'package:flutter/material.dart';
import 'package:quiz/mode/mode_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Mode extends StatelessWidget {
  const Mode({super.key, required this.onTap});

  final void Function(int number) onTap;

  void startQuiz(int num) {
    onTap(num);
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Mode_Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.85),
              child: Text(
                'Questions Per Round',
                style: GoogleFonts.ysabeau(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const Alignment(-0.7, 0.3),
                  child: ModeButton(
                    number: 10,
                    onTap: () {
                      startQuiz(10);
                    },
                    height: 120,
                    width: 150,
                    gradient: LinearGradient(
                      colors: [
                        Colors.cyan.withOpacity(0.8),
                        Colors.indigo.withOpacity(0.8)
                      ],
                    ),
                    border: BorderRadius.circular(20),
                    shadowColor: const Color.fromARGB(255, 12, 207, 233),
                    fontSize: 45,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Align(
                  alignment: const Alignment(-0.7, 0.3),
                  child: ModeButton(
                    number: 20,
                    onTap: () {
                      startQuiz(20);
                    },
                    height: 120,
                    width: 150,
                    gradient: const LinearGradient(
                      colors: [Colors.yellow, Colors.green],
                    ),
                    border: BorderRadius.circular(20),
                    shadowColor: const Color.fromARGB(255, 93, 223, 97),
                    fontSize: 45,
                  ),
                ),
              ],
            ),
            Align(
              alignment: const Alignment(0, 0.73),
              child: ModeButton(
                number: 50,
                onTap: () {
                  startQuiz(50);
                },
                height: 120,
                width: 330,
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.red],
                ),
                border: BorderRadius.circular(20),
                shadowColor: Colors.redAccent,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
