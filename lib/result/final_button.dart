import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalButton extends StatelessWidget {
  const FinalButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: onTap,
      style: ButtonStyle(
        fixedSize: const MaterialStatePropertyAll(Size(150, 40)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(255, 255, 17, 0);
            }
            return Colors.white;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            );
          },
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.novaFlat(
          color: Colors.black,
          fontSize: 25,
        ),
      ),
    );
  }
}
