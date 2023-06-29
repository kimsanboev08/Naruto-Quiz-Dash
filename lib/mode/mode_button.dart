import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModeButton extends StatelessWidget {
  const ModeButton({
    super.key,
    required this.number,
    required this.onTap,
    required this.height,
    required this.width,
    required this.gradient,
    required this.border,
    required this.shadowColor,
    required this.fontSize,
  });

  final int number;
  final void Function() onTap;
  final double height;
  final double width;
  final LinearGradient gradient;
  final BorderRadius border;
  final Color shadowColor;
  final double fontSize;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: border,
      ),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 15,
          shadowColor: shadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: border,
          ),
        ),
        child: Text(
          number.toString(),
          style: GoogleFonts.raleway(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
