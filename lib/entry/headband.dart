import 'package:flutter/material.dart';

class Headband extends StatelessWidget {
  const Headband({super.key, required this.changeScreen});

  final Function changeScreen;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () => changeScreen(),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(-0.035, 0.674),
            child: Container(
              width: 161,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    //color: Colors.grey,
                    spreadRadius: 0.2,
                    blurRadius: 5,
                    offset: const Offset(4, 8),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.7),
            child: Image.asset(
              'assets/images/Headband.png',
              width: 200,
              height: 80,
            ),
          ),
          const Align(
            alignment: Alignment(-0.043, 0.6705),
            child: Text(
              "Start",
              style: TextStyle(
                fontFamily: 'Naruto',
                fontSize: 31.8,
                color: Color.fromARGB(255, 95, 91, 91),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
